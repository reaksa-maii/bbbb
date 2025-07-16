import 'package:grpc/grpc.dart';
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
}
