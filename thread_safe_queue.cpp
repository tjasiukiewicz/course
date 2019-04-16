#include <mutex>
#include <thread>
#include <condition_variable>
#include <iostream>
#include <memory>
#include <queue>
#include <chrono>
#include <functional>

template<typename T>
class thread_safe_queue {
    using glock_t = std::lock_guard<std::mutex>;
    using ulock_t = std::unique_lock<std::mutex>;

public:
    thread_safe_queue() {}

    thread_safe_queue(const thread_safe_queue& src) {
        glock_t l(mtx);
        glock_t q(src.mtx); 
        data_queue = src.data_queue;
    }

    void push(T value) {
        glock_t l(mtx);
        data_queue.push(value);
        data_cond.notify_one();
    }

    void wait_and_pop(T& value) {
        ulock_t l(mtx);
        data_cond.wait(l, [this]{ return !data_queue.empty();});
        value = data_queue.front();
        data_queue.pop();
    }

    std::shared_ptr<T> wait_and_pop() {
        ulock_t l(mtx);
        data_cond.wait(l, [this]{ return !data_queue.empty();});
        std::shared_ptr<T> ptr_data{std::make_shared<T>(data_queue.front())};
        data_queue.pop();
        return ptr_data;
    }

    bool try_pop(T& value) {
        bool popped = false;
        if(mtx.try_lock()) {
            glock_t l(mtx, std::adopt_lock);
            if(!data_queue.empty()) {
                value = data_queue.front();
                data_queue.pop();
                popped = true;
            }
        }
        return popped;
    }

    std::shared_ptr<T> try_pop() {
        if(mtx.try_lock()) {
            glock_t l(mtx, std::adopt_lock);
            if(!data_queue.empty()) {
                std::shared_ptr<T> ptr_data{std::make_shared<T>(data_queue.front())};
                data_queue.pop();
                return ptr_data;
            }
        }
        return std::shared_ptr<T>();
    }

    bool empty() const {
        glock_t l(mtx);
        return data_queue.empty();
    }

    size_t size() const {
        glock_t l(mtx);
        return data_queue.size();
    }
private:
    mutable std::mutex mtx;
    std::queue<T> data_queue;
    std::condition_variable data_cond;
};

template<typename T>
void work_thread(thread_safe_queue<T>& q) {
    T value;
    for(auto i = 0U; i < 5; ++i) {
        q.wait_and_pop(value);
        std::cout << value << std::endl;
    }
}

template<typename T>
void sender(thread_safe_queue<T>& q) {
    for(auto i = 0U; i < 10; ++i) {
        std::this_thread::sleep_for(std::chrono::milliseconds(200));
        q.push(42 + i);
    }
}

int main() {
    thread_safe_queue<int> q;
    auto f = std::bind(work_thread<int>, std::ref(q));
    std::thread t1(f);
    std::thread t2(f);
    sender(q);
    t1.join();
    t2.join();
}




