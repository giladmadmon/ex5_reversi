/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#include "Server.h"
#include "ConsoleServerPrinter.h"
#include "ServerConfigParser.h"
#include <stdlib.h>

using namespace std;

int main() {
  ServerConfigParser config_parser(SERVER_CONFIG_FILE_NAME);
  ConsoleServerPrinter printer;

  Server server(config_parser.GetPort(), printer);

  try {
    server.Start();
    server.Play();
    server.Stop();
  } catch (const char *msg) {
    cout << "Cannot start server. Reason: " << msg << endl;
    exit(-1);
  }
}