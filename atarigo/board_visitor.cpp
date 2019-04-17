#include "board_visitor.hpp"
#include "board.hpp"
#include <ostream>
#include <algorithm>

namespace {

void showColName(const Streams& streams) {
    streams.os << "  ";
    char c = 'a';
    std::generate_n(std::ostream_iterator<char>(streams.os, " "), BoardWidth,
        [&]() {
            return c++;
    });
    streams.os << '\n';
}

void showSeparator(const Streams& streams) {
    streams.os << "  ";
    std::fill_n(std::ostream_iterator<char>(streams.os, " "), BoardWidth, '|');
    streams.os << '\n';
}

void showRow(const Streams& streams, const Board::FieldsContainer& fields, std::size_t rowNumber) {
    auto fieldLambda = [](const auto& field) {
        return field ? field->getRepr(): '+';
    };
    streams.os << rowNumber << ' ';
    std::transform(fields[rowNumber - 1].cbegin(), std::prev(fields[rowNumber - 1].cend()),
                   std::ostream_iterator<char>(streams.os, "-"), fieldLambda);
    streams.os << fieldLambda(*(fields[rowNumber - 1].crbegin())) << ' ' << rowNumber << '\n';
}

} // anonumous namespace

BoardVisitor::BoardVisitor(const Streams& streams)
    : streams{streams} {}

void BoardVisitor::visit(const Board::FieldsContainer& fields) const {
    showColName(streams);
    auto rowNumber = BoardWidth + 1;
    while(--rowNumber > 1) {
        showRow(streams, fields, rowNumber);
        showSeparator(streams);
    }
    showRow(streams, fields, 1);
    showColName(streams);
}
