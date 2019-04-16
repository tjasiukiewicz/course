#include <iostream>
#include <vector>
#include <mutex>
#include <chrono>
#include <string>
#include <thread>

class Seaman {
public:
    constexpr static std::chrono::duration SleepTime = std::chrono::milliseconds(20);

    explicit Seaman(std::size_t road_width)
      : mtx{},
        leftThread{(mtx.lock(), &Seaman::changePosition), this, 1}, rightThread{&Seaman::changePosition, this, -1},
        stop{false},
        road_width{road_width},
        position{road_width / 2}
    {}

    void run() {
        mtx.unlock();
        while(!stop) {
            showRoad();
            std::this_thread::sleep_for(std::chrono::milliseconds(20));
        }
        showRoad();
    }
    ~Seaman() {
        mtx.unlock();
        stop = true;
        leftThread.join();
        rightThread.join();
    }
private:
    void showRoad() const {
        std::size_t current_position;
        {
            std::lock_guard<std::mutex> lk(mtx);
            current_position = position;
        }
        std::cout << '|' << std::string(current_position, '-') << '*'
          << std::string(road_width - current_position - 1, '-') << '|' << std::endl;
    }
    void changePosition(int delta) {
        for(;;) {
            if(std::lock_guard<std::mutex> lk(mtx); !stop) {
                position += delta;
                if(bandCollided()) {
                    stop = true;
                    break;
                }
            } else {
                break;
            }
            std::this_thread::sleep_for(SleepTime + std::chrono::milliseconds(5 * delta));
            //std::this_thread::sleep_for(SleepTime - std::chrono::milliseconds(5 * delta));
        }
    }

    bool bandCollided() const {
        return ((position == 0) || (position == road_width - 1));
    }

    mutable std::mutex mtx;
    std::thread leftThread;
    std::thread rightThread;
    bool stop;
    std::size_t road_width;
    std::size_t position;
};

int main() {
    Seaman seaman(10);
    seaman.run();
}
