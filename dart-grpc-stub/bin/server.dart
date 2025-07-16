import 'package:grpc/grpc.dart';
import '../../code-generate/build/generated/v1/book.pbgrpc.dart';
class GreeterService extends GreeterServiceBase {
  @override
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async {
    final name = request.name;
    final message = 'Hello, $name!';
    return HelloReply()..message = message;
  }

}

Future<void> main(List<String> args) async {
  final server = Server.create(
    services: [GreeterService()],
  );
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}