/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#include "Server.h"
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <memory.h>
#include <iostream>
using namespace std;
#define MAX_CONNECTED_CLIENTS 2

Server::Server(int port, ServerPrinter &printer) : port(port), serverSocket(0), printer_(printer) {
  printer.PrintServer();
}

void Server::Start() {
  // Create a socket point
  serverSocket = socket(AF_INET, SOCK_STREAM, 0);
  if (serverSocket == -1) {
    throw "Error opening socket";
  }
  // Assign a local address to the socket
  struct sockaddr_in serverAddress;
  bzero((void *) &serverAddress,
        sizeof(serverAddress));
  serverAddress.sin_family = AF_INET;
  serverAddress.sin_addr.s_addr = INADDR_ANY;
  serverAddress.sin_port = htons(port);
  if (bind(serverSocket, (struct sockaddr *) &serverAddress, sizeof(serverAddress)) == -1) {
    throw "Error on binding";
  }
  // Start listening to incoming connections
  listen(serverSocket, MAX_CONNECTED_CLIENTS);

}

void Server::Play() {
  int n, firstClientSocket, secondClientSocket;

  while (true) {
    printer_.PrintWaitingServer();

    n = ConnectClients(firstClientSocket, secondClientSocket);
    if (n == 0) {
      throw "Error on accept";
    }

    n = TellTurn(firstClientSocket, secondClientSocket);
    if (n == 0) {
      printer_.PrintErrorServerTurns();
    }

    GameStatus status = PLAYING;
    int currentClient = firstClientSocket, otherClient = secondClientSocket;
    while (status != GAME_ENDED && status != CLIENT_DISCONNECTED) {
      status = PlayOneTurn(currentClient, otherClient);

      switch (status) {
        case ERROR: return;
        case NO_MOVE:
        case PLAYING:SwapClients(currentClient, otherClient);
          break;
        case CLIENT_DISCONNECTED:
        case GAME_ENDED:break;
      }

    }

    // Close communication with the client
    close(firstClientSocket);
    close(secondClientSocket);
  }
}

void Server::SwapClients(int &currentClient, int &otherClient) {
  int tempClient = currentClient;
  currentClient = otherClient;
  otherClient = tempClient;
}

int Server::ConnectClients(int &firstClientSocket, int &secondClientSocket) {
  // Define the client socket's structures
  struct sockaddr_in clientAddress;
  socklen_t clientAddressLen = 0;

// Accept a new client connection
  firstClientSocket = accept(serverSocket, (struct sockaddr *) &clientAddress, &clientAddressLen);
  printer_.PrintFirstConnection();
  if (firstClientSocket == -1) {
    return 0;
  }

  // Accept a new client connection
  secondClientSocket = accept(serverSocket, (struct sockaddr *) &clientAddress, &clientAddressLen);
  printer_.PrintSecondConnection();
  if (secondClientSocket == -1) {
    return 0;
  }

  return 1;
}

int Server::TellTurn(int firstClientSocket, int secondClientSocket) {
  int n, turn = 1;
  n = write(firstClientSocket, &turn, sizeof(turn));
  if (n == -1) {
    return 0;
  }

  turn++;

  n = write(secondClientSocket, &turn, sizeof(turn));
  if (n == -1) {
    return 0;
  }

  return 1;
}

GameStatus Server::PlayOneTurn(int currentClient, int otherClient) {
  int n;
  char msg[LONGEST_COMMAND];
  GameStatus status;

  n = read(currentClient, &msg, LONGEST_COMMAND);
  if (n == -1) {
    printer_.PrintErrorReadMsg();
    return ERROR;
  }
  if (n == 0) {
    printer_.PrintClientDisconnected();
    return CLIENT_DISCONNECTED;
  }

  if (strcmp(reinterpret_cast<const char *>(&msg), "NoMove") == 0) {
    status = NO_MOVE;
  } else if (strcmp(reinterpret_cast<const char *>(&msg), "End") == 0) {
    status = GAME_ENDED;
    write(currentClient, &msg, sizeof(msg));
  } else {
    status = PLAYING;
  }

  n = write(otherClient, &msg, LONGEST_COMMAND);
  if (n == -1) {
    printer_.PrintErrorReadMsg();
    return ERROR;
  }
  if (n == 0) {
    printer_.PrintClientDisconnected();

    return CLIENT_DISCONNECTED;
  }

  PrintStatus(status, msg);
  return status;
}

void Server::PrintStatus(GameStatus status, string msg) {
  switch (status) {

    case NO_MOVE: cout << "Game status: no moves " << endl;
      break;
    case GAME_ENDED:cout << "Game status: Game ended " << endl;
      break;
    case CLIENT_DISCONNECTED:cout << "Game status: " << msg << endl;
      break;
    case PLAYING:cout << "Move: (" << msg << ")" << endl;
      break;
    case ERROR:break;
  }
}

void Server::Stop() {
  close(serverSocket);
}
