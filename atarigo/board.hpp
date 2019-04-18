#pragma once

#include <array>
#include <optional>
#include "stone.hpp"

constexpr static std::size_t BoardWidth = 9;

class IBoardVisitor;
enum class DropEffect;

class Board {
public:
    using FieldsContainer = std::array<std::array<std::optional<Stone>, BoardWidth>, BoardWidth>;
    Board();
    DropEffect dropStone(Stone&& stone, std::size_t col, std::size_t row);
    void accept(const IBoardVisitor& visitor) const;
private:
    FieldsContainer fields;
};

