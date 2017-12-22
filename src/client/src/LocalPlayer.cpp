/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/



#include "../include/LocalPlayer.h"
#include <sstream>

using namespace std;

Position LocalPlayer::MakeAMove(vector<Position> &possible_moves,
                                Printer &printer,
                                PlayerColor color) {

  Position position = player_.MakeAMove(possible_moves, printer, color);
  if (possible_moves.empty()) {
    client_.SendMsg(NO_MOVE_MSG);
  } else {
    ostringstream convert;
    convert << position;
    client_.SendMsg(convert.str());
  }

  return position;
}
LocalPlayer::LocalPlayer(Client &client, Player &player) : client_(client), player_(player) {}