#include <iostream>

template<typename ... Args>
void foo(Args... args) {
    std::cout << sizeof...(args) << '\n';
}

template<typename Arg>
void showArgs(Arg arg) {
    std::cout << arg << '\n';
}

template<typename Arg, typename... Args>
void showArgs(Arg arg, Args... args) {
    showArgs(arg);
    showArgs(args...);
}

void other(int&& v) {
    std::cout << "&& " << v << '\n';
}

void other(int& v) {
    std::cout << "& " << v << '\n';
}

template<typename... Args>
void calc(Args&&... args) {
    other(std::forward<Args>(args)...);
    //other(args...);
}

template<typename... Args>
stuct X: Args... {};

int main() {
    int a = 12;
    int &b = a;
    foo(1, 2, 3, "ala", 123.4F, 123UL);
    showArgs(1, 2, 3, "ala", 123.4F, 123UL);
    calc(b);
    calc(int(123));
}

