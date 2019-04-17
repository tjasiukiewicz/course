# 1 "x.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 391 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "x.cpp" 2
# 1 "./x.hpp" 1


template<typename T>
struct X {
    X();
    void info() const;
private:
    T data;
};
# 2 "x.cpp" 2

template<typename T>
X<T>::X() : data{} {}

template<typename T>
void X<T>::info() const {

}


# 1 "./x.tpp" 1
template struct X<int>;
# 12 "x.cpp" 2

