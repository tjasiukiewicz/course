#pragma once
#include <string>
#include <utility>
#include "stone.hpp"

class Player {
public:
    Player(const std::string& name, Stone::Color color);
    const std::string& getName() const;
    Stone::Color getColor() const;
    std::pair<std::size_t, std::size_t> getMove() const;
private:
    std::string name;
    Stone::Color color;
};

