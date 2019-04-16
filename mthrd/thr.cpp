#include <iostream>
#include <thread>

void foo() {
    std::cout << "In thread\n";
}

struct X {
    void work() {
        std::cout << "X::work()" << std::this_thread::get_id() << '\n';
    }
};

struct Y {
    void operator()() {
        std::cout << "Y::work()\n";
    }
};

void modify(int& val) {
    ++val;
}

int main() {
    X x;
    Y y;
    int a = 42;
    std::cout << std::thread::hardware_concurrency() << '\n';
    std::thread thr1{foo};
    std::thread thr2;
    std::thread thr3{&X::work, &x};
    std::thread thr4{y};
    std::thread thr5{[]{std::cout << "lambda\n";}};
    std::thread thr6{modify, std::ref(a)};
    thr2 = std::move(thr1);
    for(auto& th: {&thr1, &thr2, &thr3, &thr4, &thr5, &thr6}) {
        if(th->joinable()) {
            th->join();
        }
    }
    std::cout << a << '\n';
}
