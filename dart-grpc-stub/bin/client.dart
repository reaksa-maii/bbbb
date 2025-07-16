import 'package:grpc/grpc.dart';
Future<void> main() async {
  final channel = ClientChannel(
    '127.0.0.1', 
    port: 50051,                      
    options: const ChannelOptions(
      credentials: ChannelCredentials.secure(),
    ),
  );
  try {
    print('Client channel created.');
    await channel.shutdown();
    print(channel.port);
    print('Channel closed.');
  } catch (e) {
    print('Error closing channel: $e');
  }
}
