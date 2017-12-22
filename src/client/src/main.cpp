/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#include  <iostream>

#include "../include/ClassicLogic.h"
#include "../include/ClientConfigParser.h"
#include "../include/LocalPlayer.h"
#include "../include/AIPlayer.h"
#include "../include/HumanPlayer.h"
#include "../include/ReversiGame.h"
#include "../include/ConsolePrinter.h"
#include "../include/RemotePlayer.h"

#include <limits>
#define MAX_OPTION 3
#define MIN_OPTION 1
#define BLACK_TURN 1

void StartGame(Player &black, Player &white, Logic &logic, Board &board, Printer &printer,Client *client = NULL);

int main() {
  Board board;
  ClassicLogic logic;
  ConsolePrinter printer;
  //HumanPlayer this_player;
  AIPlayer this_player(board, logic);

  int option;
  bool valid;

  printer.PrintMenu();

  do {
    cin >> option;

    if (option < MIN_OPTION || option > MAX_OPTION) {
      printer.PrintWrongMenuInput();
    }

    if (cin.good()) {
      valid = true;
    } else {
      cin.clear();
    }
    cin.ignore(numeric_limits<streamsize>::max(), '\n');
  } while (!valid || (option < MIN_OPTION || option > MAX_OPTION));

  switch (option) {
    case 1: {
      HumanPlayer other_human_player = HumanPlayer();
      StartGame(this_player, other_human_player, logic, board, printer);
      break;
    }
    case 2: {
      AIPlayer other_AI_player = AIPlayer(board, logic);
      StartGame(this_player, other_AI_player, logic, board, printer);
      break;
    }
    case 3: {
      int turn;
      ClientConfigParser config_parser(CLIENT_CONFIG_FILE_NAME);
      Client client(config_parser.GetIP().c_str(), config_parser.GetPort());
      LocalPlayer local_player(client, this_player);
      RemotePlayer remote_player(client);

      client.connectToServer(printer);

      client.ReadMsg(turn);
      if (turn == BLACK_TURN) {
        StartGame(local_player, remote_player, logic, board, printer, &client);
      } else {
        StartGame(remote_player, local_player, logic, board, printer, &client);
      }

      break;
    }
  }
}

void StartGame(Player &black, Player &white, Logic &logic, Board &board, Printer &printer, Client *client) {
  ReversiGame game(black, white, logic, board, printer, NULL);

  game.PlayGame();
}
