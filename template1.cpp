#include <iostream>

template<int V>
struct Sum {
    enum {
        value = V + 10,
        value2 = value + 20
    };
};

template<int V>
struct Sum1 {
    static const int value = V + 10;
};

// >=C++11
template<int V>
struct Sum2 {
    constexpr static int value = v + 10;
};

template<int Index>
struct Fibonacci {
    constexpr static int value = Fibonacci<Index - 2>::value + Fibonacci<Index - 1>::value;
};

template<>
struct Fobonacci<0> {
    constexpr static int value = 1;
};

template<>
struct Fobonacci<1> {
    constexpr static int value = 1;
};

template<typename T>
using Fibonacci<T>::value = Fibonacci_v<T>;



int main() {
    std::cout << Sum<42>::value << '\n';
    std::cout << Fibonacci_v<5> << '\n';
}
