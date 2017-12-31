/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#include "../include/ClientHandler.h"
#include "../include/Communication.h"
#include "../include/Convert.h"
#include "../include/GameManager.h"
ClientHandler::ClientHandler() {
  command_manager_ = new CommandManager();
}

void ClientHandler::Handle(int client_socket) {
  string msg, command;
  int delimiter_pos, prv_delimiter_pos = 0;
  vector<string> args;

  Communication::ReadMsg(client_socket, msg);

  delimiter_pos = msg.find(ARGS_DELIMITER);
  while (delimiter_pos != string::npos) {
    args.push_back(msg.substr(prv_delimiter_pos, delimiter_pos - prv_delimiter_pos));
    prv_delimiter_pos = delimiter_pos + 1;
    delimiter_pos = msg.find(ARGS_DELIMITER, delimiter_pos + 1);
  }
  args.push_back(msg.substr(prv_delimiter_pos));
  args.push_back(Convert::ConvertIntToString(client_socket));

  command = args[0];
  args.erase(args.begin());

  command_manager_->ExecuteCommand(command, args);
}
void ClientHandler::CloseAll() {
  GameManager::Instance()->FinishAllGames();
}
ClientHandler::~ClientHandler() {
  delete command_manager_;
}
