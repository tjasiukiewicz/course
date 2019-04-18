#pragma once

#include "iboard_visitor.hpp"
#include "board.hpp"
#include "streams.hpp"

class BoardVisitor: public IBoardVisitor {
public:
    explicit BoardVisitor(const Streams& streams);
    void visit(const Board::FieldsContainer& fields) const override;
private:
    Streams streams;
};
