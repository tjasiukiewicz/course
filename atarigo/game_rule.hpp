#pragma once

#include "iboard_visitor.hpp"

struct Streams;
enum class DropEffect;

class GameRule: public IBoardVisitor {
public:
    GameRule();
    void visit(const Board::FieldsContainer& fields) const override;
    DropEffect isDropCorrect(std::size_t col, std::size_t row) const;
private:
    mutable const Board::FieldsContainer * fields;
};
