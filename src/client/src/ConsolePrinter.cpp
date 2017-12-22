/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#include <iostream>
#include <iomanip>
#include "../include/ConsolePrinter.h"

using namespace std;

ConsolePrinter::ConsolePrinter() {}
void ConsolePrinter::PrintNotANumber() {
  cout << "Please enter a number." << endl;
}

void ConsolePrinter::PrintBoard(Board &board) {
  cout << endl;
  for (int i = 0; i <= board.GetSize(); i++) {
    for (int j = 0; j <= board.GetSize(); j++)
      if (i == 0) {
        if (j == 0)
          cout << " |";
        else
          cout << " " << j << " |";
      } else if (j == 0) {
        cout << i << "|";
      } else {
        cout << " " << (char) board.GetColorAtPosition(i, j) << " |";
      }
    cout << endl;
    cout << setw(2 + board.GetSize() * 4) << setfill('-') << '-' << endl;
  }
}

void ConsolePrinter::PrintPossibleMoves(vector<Position> &moves) {
  cout << "The possible moves are: " << endl;
  for (vector<Position>::iterator it = moves.begin(); it != moves.end(); ++it) {
    cout << "(" << (it.base()->GetRow()) << ","
         << (it.base()->GetColumn()) << ")  ";
  }
  cout << endl;
}

void ConsolePrinter::PrintNoMoves(PlayerColor color) {
  cout << (char) color << " -- you have no moves. Press any key to continue." << endl;
}

void ConsolePrinter::PrintCurrentTurn(PlayerColor color) {
  cout << (char) color << " turn!" << endl;
}

void ConsolePrinter::PrintEnterRow() {
  cout << "Enter the row:" << endl;
}

void ConsolePrinter::PrintEnterCol() {
  cout << "Enter the column:" << endl;
}

void ConsolePrinter::PrintWrongMove() {
  cout << "Bad move, try again!" << endl;
}

void ConsolePrinter::PrintWinner(PlayerColor color) {
  if (color == NoColor) {
    cout << "It's a tie!" << endl << endl;
  } else {
    cout << "The winner is -- " << (char) color << "!" << endl << endl;
  }
}

void ConsolePrinter::PrintScore(int black_score, int white_score) {
  cout << "There are " << black_score << " " << (char) Black << " tools." << endl
       << "There are " << white_score << " " << (char) White << " tools." << endl;
}

void ConsolePrinter::PrintMove(Position &position, PlayerColor color) {
  cout << (char) color << " played: (" << position.GetRow() << "," << position.GetColumn() << ")" << endl;
}

void ConsolePrinter::PrintAINoMove(PlayerColor color) {
  cout << (char) color << " had no move." << endl;
}

void ConsolePrinter::PrintWaiting() {
  cout << "Waiting for other player's move.." << endl;
}

void ConsolePrinter::PrintConnection() {
  cout << "Connected to server" << endl;
  cout << "Waiting for other player to join.." << endl;
}
void ConsolePrinter::PrintMenu() {
  cout << "Hello! who would you like to play Reversi with?:)" << endl;
  cout << "(1) Your Friend. " << endl;
  cout << "(2) The computer. " << endl;
  cout << "(3) Remote player. " << endl;
}
void ConsolePrinter::PrintWrongMenuInput() {
  cout << "wrong input, try again" << endl;
}