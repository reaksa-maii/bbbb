int calculate() {
  return 6 * 7;
}
class OneClient {
  final String host;
  final int port;

  OneClient(this.host, this.port);

  void connect() {
    // Logic to connect to the gRPC server
    print('Connecting to gRPC server at $host:$port');
  }

  void disconnect() {
    // Logic to disconnect from the gRPC server
    print('Disconnecting from gRPC server at $host:$port');
  }
}
