#include "player_facade.hpp"
#include <limits>

namespace {

std::size_t getCoords(const Streams& streams, const std::string& prompt, const std::string& errorMsg) {
    std::size_t coords;
    for(;;) {
        streams.os << prompt;
        streams.is >> coords;
        if(streams.is) {
            break;
        }
        streams.is.clear();
        streams.is.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        streams.es << errorMsg;
    }
    return coords;
}

} // anonymous namespace

PlayerFacade::PlayerFacade(const Streams& streams)
    : streams{streams} {}

std::pair<std::size_t, std::size_t> PlayerFacade::getMove() const {
    auto col = getCoords(streams, "Podaj kolumnę [0, 8]: ", "Złe dane. Spróbuj jeszcze raz!\n");
    auto row = getCoords(streams, "Podaj wiersz  [0, 8]: ", "Złe dane. Spróbuj jeszcze raz!\n");
    return {col, row};
}

void PlayerFacade::showPlayerInfo(const std::string& playerName, Stone::Color color) const {
    streams.os << "Gracz: " << playerName << " grający "
               << (color == Stone::Color::Black ? 'X': 'O') << ": ";
}
