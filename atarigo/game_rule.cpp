#include "game_rule.hpp"
#include "streams.hpp"
#include "drop_effect.hpp"

GameRule::GameRule()
    : fields{nullptr} {}

void GameRule::visit(const Board::FieldsContainer& fields) const {
    this->fields = &fields;
}

DropEffect GameRule::isDropCorrect(std::size_t col, std::size_t row) const {
    // TODO: Sprawdzanie braku oddechów.. 
    (void) col;
    (void) row;
    return DropEffect::Success;
}

