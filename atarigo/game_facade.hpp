#pragma once

#include "streams.hpp"

enum class DropEffect;

class GameFacade {
public:
    GameFacade(const Streams& streams);
    void moveError(DropEffect effect) const;
private:
    Streams streams;
};
