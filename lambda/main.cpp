#include <functional>

int foo(int) {
    return 0;
}

struct X {
    int foo(int) {
        return 0;
    }
};

struct Y {
    Y(int & data): data{data} {}
    int operator()(int val) {
        return data + val;
    }
private:
    int & data;
};

int main() {
    [](){}();

    int a = 12;
    X x;

    std::function<int(int)> myLambda = [&](int val) {
        return a + 12;
    };
    myLambda(23);
    decltype(myLambda) f = foo;
    decltype(myLambda) f2 = std::bind(&X::foo, &x, std::placeholders::_1);

    auto modify = [=]() mutable {
        a += 12;
    };
    modify();

}
