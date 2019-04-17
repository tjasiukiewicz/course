#include "game_facade.hpp"
#include "drop_effect.hpp"

GameFacade::GameFacade(const Streams& streams)
    : streams{streams} {}

void GameFacade::moveError(DropEffect effect) const {
    if(effect == DropEffect::SameStone) {
        streams.es << "Na podanej pozycji znajduje się Twój kamień!\n";
    } else if(effect == DropEffect::OtherStone) {
        streams.es << "Na podanej pozycji znajduje sią kamień przeciwnika!\n";
    }
}
