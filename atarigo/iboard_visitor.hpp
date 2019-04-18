#pragma once

#include "board.hpp"

class IBoardVisitor {
public:
    virtual void visit(const Board::FieldsContainer& fields) const = 0;
    virtual ~IBoardVisitor() = default;
};
