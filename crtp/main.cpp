#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

class Airplane {
public:
    Airplane(const std::string& name)
      : name{name} {
          instances.push_back(this);
     }
    static std::vector<Airplane *> getInstances() {
        return instances;
    }
    ~Airplane() {
        instances.erase(std::remove(instances.begin(), instances.end(), this), instances.end());
    }
    const std::string& getName() const {
        return name;
    }
private:
    static std::vector<Airplane *> instances;
    std::string name;
};

std::vector<Airplane *> Airplane::instances;

template<typename T>
class Instances {
public:
    Instances()
    {
        instances.push_back(static_cast<T *>(this));
    }
    static std::vector<T *> getInstances() {
        return instances;
    }
    ~Instances() {
        instances.erase(std::remove(instances.begin(), instances.end(), static_cast<T *>(this)), instances.end());
    }
private:
    static std::vector<T *> instances;
};

template<typename T>
std::vector<T *> Instances<T>::instances;

class Tank: public Instances<Tank> {
public:
    Tank(const std::string& name)
      : name{name} {}

    const std::string& getName() const {
        return name;
    }
private:
    std::string name;
};

int main() {
    Tank tank1{"Rudy 102"};
    Tank tank2{"Tygrys"};

    for(const auto& obj: Instances<Tank>::getInstances()) {
        std::cout << obj->getName() << '\n';
    }
}
