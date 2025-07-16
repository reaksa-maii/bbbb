import 'package:grpc/grpc.dart';

import '../../code-generate/build/generated/v1/book.pbgrpc.dart';
Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  try {
    channel.getConnection();
    print("Connectino Done");
  } catch (e) {
    print("object");
  }
  final stub = GreeterClient(channel);
  
  try {
    final response = await stub.sayHello(HelloRequest()..name = 'World');
    print('Greeter client received: ${response.message}');
  } catch (e) {
    print('Caught error: $e');
  } finally {
    await channel.shutdown();
  }
}
