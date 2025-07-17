import 'package:grpc/grpc.dart';
import '../../code-generate/build/generated/v4/main.pbgrpc.dart';

class OneMainGrpcService extends OneMainGrpcServiceBase {
  @override
  Future<HelloReply> callPerson(ServiceCall call, HelloRequest request) async {
    final name = request.name;
    final message = 'Hello, $name!';
    return HelloReply()..message = message;
  }
} 