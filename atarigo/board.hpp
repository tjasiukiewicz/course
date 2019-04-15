#pragma once
#include <array>
#include <optional>
#include "stone.hpp"

constexpr static std::size_t BoardWidth = 9;

class Board {
public:
    Board();
    void show() const ;
    void dropStone(Stone&& stone, std::size_t col, std::size_t row);

private:
    void showColName() const;
    void showSeparator() const ;
    void showRow(std::size_t rowNumber) const ;
    std::array<std::array<std::optional<Stone>, BoardWidth>, BoardWidth> fields;
};

