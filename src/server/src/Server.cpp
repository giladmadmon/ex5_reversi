/**************
* Student name: Gilad Madmon
* Student name: Dafna Magid
* Exercise name: Exercise 5
**************/

#include <sys/socket.h>
#include <netinet/in.h>
#include <memory.h>
#include <unistd.h>
#include "../include/Server.h"

typedef struct {
  ClientHandler *client_handler;
  int client_socket;
} HandleClientArgs;

Server::Server(int port, ServerPrinter &printer)
    : is_closed_(0), port_(port), server_socket_(0), client_handler_(ClientHandler()) {
  printer.PrintServer();
}

void Server::Start() {
  // Create a socket point
  server_socket_ = socket(AF_INET, SOCK_STREAM, 0);
  if (server_socket_ == -1) {
    throw "Error opening socket";
  }
  // Assign a local address to the socket
  struct sockaddr_in serverAddress;
  bzero((void *) &serverAddress,
        sizeof(serverAddress));
  serverAddress.sin_family = AF_INET;
  serverAddress.sin_addr.s_addr = INADDR_ANY;
  serverAddress.sin_port = htons(port_);
  if (bind(server_socket_, (struct sockaddr *) &serverAddress, sizeof(serverAddress)) == -1) {
    throw "Error on binding";
  }
  // Start listening to incoming connections
  listen(server_socket_, MAX_CONNECTED_CLIENTS);
}

void Server::Stop() {
  is_closed_ = 1;
  client_handler_.CloseAll();
  close(server_socket_);
}
int Server::WaitForConnection() {
  int client;
  // Define the client socket's structures
  struct sockaddr_in clientAddress;
  socklen_t clientAddressLen = 0;

  // Accept a new client connection
  client = accept(server_socket_, (struct sockaddr *) &clientAddress, &clientAddressLen);

  return client;
}

void *HandleClient(void *handle_client_args_pointer) {
  HandleClientArgs *handle_client_args = (HandleClientArgs *) handle_client_args_pointer;
  ClientHandler *client_handler = handle_client_args->client_handler;
  int client_socket = handle_client_args->client_socket;

  client_handler->Handle(client_socket);
}

void Server::AcceptConnections() {
  while (!is_closed_) {
    pthread_t pthread;
    HandleClientArgs args;

    args.client_handler = &client_handler_;
    args.client_socket = WaitForConnection();

    pthread_create(&pthread, NULL, HandleClient, &args);
  }
}