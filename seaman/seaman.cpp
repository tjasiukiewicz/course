#include <iostream>
#include <vector>
#include <mutex>
#include <chrono>

class Seaman {
public:
    explicit Seaman(std::size_t road_width)
      : road_width{road_width}, position{road_width / 2}
    {}

    void run() {
    }
    ~Seaman() {
        stop = true;
        leftThread.join();
        rightThread.join();
    }
private:
    void showRoad() const {
        //
    }
    void changePosition(int delta) {
        while(!stop) {
            //
        }
    }
    mutable std::mutex mtx;
    std::thread leftThread;
    std::thread rightThread;
    bool stop;
    std::size_t road_width;
    std::size_t position;
};

int main() {
    Seaman seaman;
    seaman.run();
}
