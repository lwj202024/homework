#include <vector>
#include <cstring>
#include <string>
#include <iostream>
#include <fstream>
#include <chrono>
#include <iomanip>
#include <sstream>
#include <sys/time.h>
#include <omp.h>
#include <cmath>
#include <cassert>

// 根据目标平台包含对应的Intrinsics头文件
// 对于x86平台（SSE/AVX）：
#include <immintrin.h>  // 包含AVX、AVX2、SSE等
// 对于ARM平台（NEON）：
// #include <arm_neon.h>

// 测试用例生成函数（参考文档2.1.2节Listing 1）
void generate_test_matrix(float* A, float* b, int N) {
    // 初始化矩阵A为单位上三角随机矩阵，向量b为随机值
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            A[i * N + j] = 0.0f;
        }
        A[i * N + i] = 1.0f;
        for (int j = i + 1; j < N; j++) {
            A[i * N + j] = static_cast<float>(rand()) / RAND_MAX * 100.0f; // 随机数
        }
        b[i] = static_cast<float>(rand()) / RAND_MAX * 100.0f;
    }
    // 构造一个可解的系统（通过累加行）
    for (int k = 0; k < N; k++) {
        for (int i = k + 1; i < N; i++) {
            for (int j = 0; j < N; j++) {
                A[i * N + j] += A[k * N + j];
            }
            b[i] += b[k];
        }
    }
}

// 串行高斯消元函数（参考文档2.1.1节伪代码）
void gaussian_elimination_serial(float* A, float* b, float* x, int N) {
    // 消去过程
    for (int k = 0; k < N; k++) {
        // 除法行：A[k][k]为枢轴，对第k行从k+1列开始归一化
        for (int j = k + 1; j < N; j++) {
            A[k * N + j] = A[k * N + j] / A[k * N + k];
        }
        b[k] = b[k] / A[k * N + k];
        A[k * N + k] = 1.0f;

        // 消去行：更新第k+1行到第N-1行
        for (int i = k + 1; i < N; i++) {
            float factor = A[i * N + k];
            for (int j = k + 1; j < N; j++) {
                A[i * N + j] = A[i * N + j] - factor * A[k * N + j];
            }
            b[i] = b[i] - factor * b[k];
            A[i * N + k] = 0.0f;
        }
    }

    // 回代过程
    for (int i = N - 1; i >= 0; i--) {
        x[i] = b[i];
        for (int j = i + 1; j < N; j++) {
            x[i] = x[i] - A[i * N + j] * x[j];
        }
        x[i] = x[i] / A[i * N + i];
    }
}

// SIMD向量化高斯消元函数（基于文档Algorithm 1伪代码，以SSE 4路向量化为例）
void gaussian_elimination_simd(float* A, float* b, float* x, int N) {
    // 消去过程
    for (int k = 0; k < N; k++) {
        // 除法行向量化：处理第k行从k+1列开始的元素
        float pivot = A[k * N + k];
        __m128 vt = _mm_set1_ps(pivot); // 将枢轴值复制到向量寄存器的所有位置

        int j = k + 1;
        // 处理对齐到16字节边界的部分（如果需要对齐优化，可先处理非对齐部分）
        for (; j + 4 <= N; j += 4) {
            // 加载4个单精度浮点数
            __m128 va = _mm_loadu_ps(&A[k * N + j]); // 使用未对齐加载，如需对齐可用_mm_load_ps
            // 向量除法：va = va / vt
            va = _mm_div_ps(va, vt);
            // 存储结果
            _mm_storeu_ps(&A[k * N + j], va);
        }
        // 处理剩余元素（尾部处理）
        for (; j < N; j++) {
            A[k * N + j] = A[k * N + j] / pivot;
        }
        b[k] = b[k] / pivot;
        A[k * N + k] = 1.0f;

        // 消去行向量化：更新第k+1行到第N-1行
        for (int i = k + 1; i < N; i++) {
            float factor = A[i * N + k];
            __m128 vaik = _mm_set1_ps(factor);

            int j = k + 1;
            for (; j + 4 <= N; j += 4) {
                // 加载第k行的4个元素
                __m128 vakj = _mm_loadu_ps(&A[k * N + j]);
                // 加载第i行的4个元素
                __m128 vaij = _mm_loadu_ps(&A[i * N + j]);
                // 计算：vx = vakj * vaik
                __m128 vx = _mm_mul_ps(vakj, vaik);
                // 更新：vaij = vaij - vx
                vaij = _mm_sub_ps(vaij, vx);
                // 存储结果
                _mm_storeu_ps(&A[i * N + j], vaij);
            }
            // 处理剩余元素
            for (; j < N; j++) {
                A[i * N + j] = A[i * N + j] - A[k * N + j] * factor;
            }
            b[i] = b[i] - factor * b[k];
            A[i * N + k] = 0.0f;
        }
    }

    // 回代过程（也可向量化，但这里简化为串行）
    for (int i = N - 1; i >= 0; i--) {
        x[i] = b[i];
        for (int j = i + 1; j < N; j++) {
            x[i] = x[i] - A[i * N + j] * x[j];
        }
        x[i] = x[i] / A[i * N + i];
    }
}

// 验证结果正确性函数
bool verify_solution(float* A, float* b, float* x, int N, float tolerance = 1e-4) {
    for (int i = 0; i < N; i++) {
        float sum = 0.0f;
        for (int j = 0; j < N; j++) {
            sum += A[i * N + j] * x[j];
        }
        if (std::abs(sum - b[i]) > tolerance) {
            std::cerr << "验证失败: 行 " << i << ", 期望 " << b[i] << ", 得到 " << sum << std::endl;
            return false;
        }
    }
    return true;
}

int main(int argc, char *argv[]) {
    // 设置问题规模（可从命令行参数读取）
    int N = 512;
    if (argc > 1) {
        N = std::atoi(argv[1]);
    }
    std::cout << "问题规模 N = " << N << std::endl;

    // 分配内存
    std::vector<float> A(N * N);
    std::vector<float> b(N);
    std::vector<float> x_serial(N);
    std::vector<float> x_simd(N);

    // 生成测试数据
    generate_test_matrix(A.data(), b.data(), N);

    // 测试串行版本
    std::vector<float> A_serial = A;
    std::vector<float> b_serial = b;
    auto start_serial = std::chrono::high_resolution_clock::now();
    gaussian_elimination_serial(A_serial.data(), b_serial.data(), x_serial.data(), N);
    auto end_serial = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double, std::milli> elapsed_serial = end_serial - start_serial;
    std::cout << "串行版本耗时: " << elapsed_serial.count() << " ms" << std::endl;

    // 测试SIMD并行版本
    std::vector<float> A_simd = A;
    std::vector<float> b_simd = b;
    auto start_simd = std::chrono::high_resolution_clock::now();
    gaussian_elimination_simd(A_simd.data(), b_simd.data(), x_simd.data(), N);
    auto end_simd = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double, std::milli> elapsed_simd = end_simd - start_simd;
    std::cout << "SIMD并行版本耗时: " << elapsed_simd.count() << " ms" << std::endl;
    std::cout << "加速比: " << elapsed_serial.count() / elapsed_simd.count() << std::endl;

    // 验证结果正确性
    if (verify_solution(A.data(), b.data(), x_serial.data(), N)) {
        std::cout << "串行版本结果验证通过" << std::endl;
    }
    if (verify_solution(A.data(), b.data(), x_simd.data(), N)) {
        std::cout << "SIMD并行版本结果验证通过" << std::endl;
    }

    // 比较两个版本的解是否一致（允许微小误差）
    float max_error = 0.0f;
    for (int i = 0; i < N; i++) {
        max_error = std::max(max_error, std::abs(x_serial[i] - x_simd[i]));
    }
    std::cout << "串行与SIMD解的最大误差: " << max_error << std::endl;

    return 0;
}