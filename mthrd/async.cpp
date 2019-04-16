#include <future>
#include <iostream>


int main() {
    std::future<int> ftr = std::async(std::launch::async, []{ return 42;});
    std::shared_future<int> sftr = ftr.share();
    //std::future<int> ftr = std::async(std::launch::deferred, []{ return 42;});
    // Poniższe 2 oznaczają to samo
    //std::future<int> ftr = std::async(std::launch::deferred | std::launch::async, []{ return 42;});
    //std::future<int> ftr = std::async([]{ return 42;});
    if(ftr.valid()) {
        std::cout << ftr.get() << '\n';
    }
    std::cout << sftr.get() << '\n';

}
