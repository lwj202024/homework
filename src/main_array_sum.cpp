// main_array_sum.cpp
// 问题 II: n个数求和的性能测试 (使用Windows高精度计时)
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
vector<double> generateArrayForSum(int n) {
    vector<double> arr(n);
    for (int i = 0; i < n; ++i) arr[i] = static_cast<double>(i);
    return arr;
}

// 算法 IIa: 平凡算法 (链式累加)
double sum_plain(const vector<double>& arr) {
    double total = 0.0;
    for (double val : arr) {
        total += val; // 严格的顺序依赖
    }
    return total;
}

// 算法 IIb-1: 超标量优化 (递归两两相加)
double sum_ILP_recursive(const vector<double>& arr, int left, int right) {
    if (left == right) return arr[left];
    if (left + 1 == right) return arr[left] + arr[right];
    int mid = left + (right - left) / 2;
    double left_sum = sum_ILP_recursive(arr, left, mid);
    double right_sum = sum_ILP_recursive(arr, mid + 1, right);
    return left_sum + right_sum;
}
double sum_ILP(const vector<double>& arr) {
    if (arr.empty()) return 0.0;
    return sum_ILP_recursive(arr, 0, arr.size() - 1);
}

// 算法 IIb-2: 超标量优化 (两路链式累加)
double sum_ILP_twoPath(const vector<double>& arr) {
    double sum1 = 0.0, sum2 = 0.0;
    size_t i = 0;
    size_t n = arr.size();
    // 两路累加，减少依赖
    for (; i + 1 < n; i += 2) {
        sum1 += arr[i];
        sum2 += arr[i + 1];
    }
    // 处理剩余元素
    for (; i < n; ++i) {
        sum1 += arr[i];
    }
    return sum1 + sum2;
}

// 性能测试函数
void runSumTest(int n) {
    cout << "\n=== n个数求和测试 (n = " << n << ") ===" << endl;

    // 生成数据
    auto arr = generateArrayForSum(n);

    // 正确性验证
    if (n <= 1000) {
        double result_plain = sum_plain(arr);
        double result_ilp = sum_ILP(arr);
        double result_twoPath = sum_ILP_twoPath(arr);
        if (abs(result_plain - result_ilp) < 1e-9 && 
            abs(result_plain - result_twoPath) < 1e-9) {
            cout << "正确性验证: 通过 (结果 = " << result_plain << ")" << endl;
        } else {
            cout << "警告: 算法结果不一致！" << endl;
        }
    }

    WinHighResTimer timer;
    const int REPEAT = 10000; // 求和操作很快，需要更多重复
    double result;

    // 测试平凡算法
    timer.start();
    for (int r = 0; r < REPEAT; ++r) {
        result = sum_plain(arr);
    }
    timer.stop();
    double time_plain = timer.elapsedMicroseconds() / REPEAT;

    // 测试递归两两相加
    timer.start();
    for (int r = 0; r < REPEAT; ++r) {
        result = sum_ILP(arr);
    }
    timer.stop();
    double time_ilp_recursive = timer.elapsedMicroseconds() / REPEAT;

    // 测试两路链式累加
    timer.start();
    for (int r = 0; r < REPEAT; ++r) {
        result = sum_ILP_twoPath(arr);
    }
    timer.stop();
    double time_ilp_twoPath = timer.elapsedMicroseconds() / REPEAT;

    // 输出结果
    cout << fixed << setprecision(4);
    cout << "平凡链式算法平均耗时: " << time_plain << " us" << endl;
    cout << "递归两两相加算法耗时: " << time_ilp_recursive << " us" << endl;
    cout << "两路链式累加算法耗时: " << time_ilp_twoPath << " us" << endl;
    cout << "加速比(平凡/递归): " << time_plain / time_ilp_recursive << "x" << endl;
    cout << "加速比(平凡/两路): " << time_plain / time_ilp_twoPath << "x" << endl;
}

int main() {
    cout << "CPU架构编程实验 - 问题II: n个数求和" << endl;
    cout << "======================================" << endl;
    cout << "测试不同问题规模：" << endl;
    cout << "（使用 Windows QueryPerformanceCounter 计时）" << endl << endl;

    // 测试不同规模
    vector<int> test_sizes = {1000, 10000, 100000, 500000};

    for (int n : test_sizes) {
        runSumTest(n);
    }

    cout << "\n测试完成。注意：递归算法在n很大时可能有函数调用开销和栈深度限制。" << endl;
    return 0;
}