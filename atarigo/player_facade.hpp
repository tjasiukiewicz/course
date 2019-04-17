#pragma once

#include <string>
#include <cstddef>
#include "stone.hpp"
#include "streams.hpp"

class PlayerFacade {
public:
    PlayerFacade(const Streams& streams);
    std::pair<std::size_t, std::size_t> getMove() const;
    void showPlayerInfo(const std::string& playerName, Stone::Color color) const;
private:
    Streams streams;
};
