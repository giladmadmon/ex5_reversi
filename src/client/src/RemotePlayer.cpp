/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#include <vector>
#include <cstring>
#include <cstdlib>
#include "../include/Position.h"
#include "../include/Printer.h"
#include "../include/RemotePlayer.h"

Position RemotePlayer::MakeAMove(vector<Position> &possible_moves, Printer &printer, PlayerColor color) {
  char msg[LONGEST_COMMAND];
  int chosen_row = -1, chosen_column = -1;
  int n = client_.ReadMsg(msg);

  if (n == -1) {
    return Position(-1, -1);
  }

  if (strcmp(msg, END_GAME_MSG) == 0) {
    return Position(-1, -1);
  }

  if (strcmp(msg, NO_MOVE_MSG) == 0) {
    printer.PrintAINoMove(color);
  } else {
    chosen_row = atoi(strtok(msg, POSITION_DELIMITER));
    chosen_column = atoi(strtok(NULL, POSITION_DELIMITER));
  }

  return Position(chosen_row, chosen_column);
}
RemotePlayer::RemotePlayer(Client &client) : client_(client) {}
