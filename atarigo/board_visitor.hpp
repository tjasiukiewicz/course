#pragma once

#include <ostream>
#include "board.hpp"

class BoardVisitor {
public:
    explicit BoardVisitor(std::ostream& os);
    void visit(const Board::FieldsContainer& fields);
    void show() const;
private:
    std::ostream& os;
    const Board::FieldsContainer * fieldsPtr;
};
