// main_matrix_vector.cpp
// 问题 I: 矩阵列向量内积性能测试 (使用Windows高精度计时)
#include <iostream>
#include <vector>
#include <iomanip>
#include <cassert>
#include <windows.h> // 包含Windows API

using namespace std; // 使用标准命名空间

// 基于 Windows QueryPerformanceCounter 的高精度计时器
class WinHighResTimer {
private:
    LARGE_INTEGER freq;
    LARGE_INTEGER start_time, end_time;
public:
    WinHighResTimer() {
        QueryPerformanceFrequency(&freq); // 获取计时器频率
    }
    void start() {
        QueryPerformanceCounter(&start_time);
    }
    void stop() {
        QueryPerformanceCounter(&end_time);
    }
    double elapsedMicroseconds() const {
        return (end_time.QuadPart - start_time.QuadPart) * 1e6 / freq.QuadPart;
    }
};

// 数据生成器
vector<vector<double>> generateMatrix(int n) {
    vector<vector<double>> mat(n, vector<double>(n));
    for (int i = 0; i < n; ++i)
        for (int j = 0; j < n; ++j)
            mat[i][j] = static_cast<double>(i + j);
    return mat;
}
vector<double> generateVector(int n) {
    vector<double> vec(n);
    for (int i = 0; i < n; ++i) vec[i] = static_cast<double>(i);
    return vec;
}

// 正确性验证
bool vectorsApproxEqual(const vector<double>& a, const vector<double>& b, double eps = 1e-9) {
    if (a.size() != b.size()) return false;
    for (size_t i = 0; i < a.size(); ++i)
        if (abs(a[i] - b[i]) > eps) return false;
    return true;
}

// 算法 Ia: 平凡算法 (逐列访问，缓存不友好)
vector<double> matrixVectorProduct_plain(const vector<vector<double>>& mat,
                                          const vector<double>& vec) {
    int n = vec.size();
    vector<double> result(n, 0.0);
    for (int col = 0; col < n; ++col) {
        for (int row = 0; row < n; ++row) {
            result[col] += mat[row][col] * vec[row]; // 列优先访问
        }
    }
    return result;
}

// 算法 Ib: Cache优化算法 (逐行访问，缓存友好)
vector<double> matrixVectorProduct_cacheOpt(const vector<vector<double>>& mat,
                                            const vector<double>& vec) {
    int n = vec.size();
    vector<double> result(n, 0.0);
    for (int row = 0; row < n; ++row) {
        for (int col = 0; col < n; ++col) {
            result[col] += mat[row][col] * vec[row]; // 行优先访问
        }
    }
    return result;
}

// 性能测试函数
void runMatrixVectorTest(int n) {
    cout << "\n=== 矩阵列向量内积测试 (n = " << n << ") ===" << endl;

    // 生成数据
    auto mat = generateMatrix(n);
    auto vec = generateVector(n);

    // 正确性验证 (小规模时)
    if (n <= 100) {
        auto res_plain = matrixVectorProduct_plain(mat, vec);
        auto res_cacheOpt = matrixVectorProduct_cacheOpt(mat, vec);
        if (vectorsApproxEqual(res_plain, res_cacheOpt)) {
            cout << "正确性验证: 通过" << endl;
        } else {
            cout << "警告: 两种算法结果不一致！" << endl;
        }
    }

    WinHighResTimer timer;
    const int REPEAT = 50; // 重复次数
    vector<double> result;

    // 测试平凡算法
    timer.start();
    for (int r = 0; r < REPEAT; ++r) {
        result = matrixVectorProduct_plain(mat, vec);
    }
    timer.stop();
    double time_plain = timer.elapsedMicroseconds() / REPEAT;

    // 测试Cache优化算法
    timer.start();
    for (int r = 0; r < REPEAT; ++r) {
        result = matrixVectorProduct_cacheOpt(mat, vec);
    }
    timer.stop();
    double time_cacheOpt = timer.elapsedMicroseconds() / REPEAT;

    // 输出结果
    cout << fixed << setprecision(3);
    cout << "平凡算法平均耗时: " << time_plain << " us" << endl;
    cout << "Cache优化算法平均耗时: " << time_cacheOpt << " us" << endl;
    cout << "加速比: " << time_plain / time_cacheOpt << "x" << endl;
}

int main() {
    cout << "CPU架构编程实验 - 问题I: 矩阵列向量内积" << endl;
    cout << "==========================================" << endl;
    cout << "测试不同问题规模以观察Cache效应：" << endl;
    cout << "（使用 Windows QueryPerformanceCounter 计时）" << endl << endl;

    // 测试不同规模，涵盖可能超出各级缓存的大小
    vector<int> test_sizes = {64, 128, 256, 512, 1024, 2048};

    for (int n : test_sizes) {
        runMatrixVectorTest(n);
    }

    cout << "\n测试完成。注意：性能结果高度依赖于测试平台的CPU缓存架构。" << endl;
    return 0;
}