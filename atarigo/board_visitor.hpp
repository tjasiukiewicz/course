#pragma once

#include <ostream>
#include "board.hpp"
#include "streams.hpp"

class BoardVisitor {
public:
    explicit BoardVisitor(const Streams& streams);
    void visit(const Board::FieldsContainer& fields) const;
private:
    Streams streams;
};
