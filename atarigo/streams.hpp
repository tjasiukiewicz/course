#pragma once

#include <istream>
#include <ostream>

struct Streams {
    std::istream& is;
    std::ostream& os;
    std::ostream& es;
};
