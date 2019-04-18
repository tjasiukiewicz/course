#include "board.hpp"
#include "iboard_visitor.hpp"
#include "drop_effect.hpp"

Board::Board()
    : fields{} {}

void Board::accept(const IBoardVisitor& visitor) const {
    visitor.visit(fields);
}

DropEffect Board::dropStone(Stone&& stone, std::size_t col, std::size_t row) {
    if(!fields[row][col]) {
        fields[row][col] = std::move(stone);
        return DropEffect::Success;
    }
    return DropEffect::SameStone;
}
