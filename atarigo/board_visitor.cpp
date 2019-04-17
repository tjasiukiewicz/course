#include "board_visitor.hpp"
#include "board.hpp"
#include <ostream>
#include <algorithm>
namespace {

void showColName(std::ostream& os) {
    os << "  ";
    char c = 'a';
    std::generate_n(std::ostream_iterator<char>(os, " "), BoardWidth,
    [&]() {
        return c++;
    });
    os << '\n';
}

void showSeparator(std::ostream& os) {
    os << "  ";
    std::fill_n(std::ostream_iterator<char>(os, " "), BoardWidth, '|');
    os << '\n';
}

void showRow(std::ostream& os, const Board::FieldsContainer * fieldsPtr, std::size_t rowNumber) {
    auto fieldLambda = [](const auto& field) {
        return field ? field->getRepr(): '+';
    };
    os << rowNumber << ' ';
    std::transform((*fieldsPtr)[rowNumber - 1].cbegin(), std::prev((*fieldsPtr)[rowNumber - 1].cend()),
                   std::ostream_iterator<char>(os, "-"), fieldLambda);
    os << fieldLambda(*(*fieldsPtr)[rowNumber - 1].crbegin());
    os << ' ' << rowNumber << '\n';
}

} // anonumous namespace

BoardVisitor::BoardVisitor(std::ostream& os)
    : os{os}, fieldsPtr{nullptr} {}

void BoardVisitor::visit(const Board::FieldsContainer& fields) {
    fieldsPtr = &fields;
}

void BoardVisitor::show() const {
    showColName(os);
    auto rowNumber = BoardWidth + 1;
    while(--rowNumber > 1) {
        showRow(os, fieldsPtr, rowNumber);
        showSeparator(os);
    }
    showRow(os, fieldsPtr, 1);
    showColName(os);
}

