/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#include "../include/ConsoleServerPrinter.h"
#include "../include/ServerConfigParser.h"
#include "../include/Server.h"
#include "../include/GameManager.h"
#include <stdlib.h>

using namespace std;

void *StartServer(void *server_pointer) {
  Server *server = (Server *) server_pointer;
  server->Start();
  server->AcceptConnections();
}

int main() {
  ServerConfigParser config_parser(SERVER_CONFIG_FILE_NAME);
  ConsoleServerPrinter printer;
  pthread_t pthread;
  string input;

  Server server(config_parser.GetPort(), printer);
  pthread_create(&pthread, NULL, StartServer, &server);

  do {
    cin >> input;
  } while (input != "exit");
  server.Stop();
  delete GameManager::Instance();
}
