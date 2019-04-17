#pragma once
#include <string>
#include <utility>
#include <cstddef>
#include "stone.hpp"
#include "player_facade.hpp"

class Player {
public:
    Player(PlayerFacade& facade, const std::string& name, Stone::Color color);
    void show() const;
    Stone::Color getColor() const;
    std::pair<std::size_t, std::size_t> getMove() const;
private:
    std::string name;
    Stone::Color color;
    PlayerFacade facade;
};

