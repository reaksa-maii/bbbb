import 'package:grpc/grpc.dart';

class DartGetway {
  final getway = GrpcData();
  DartGetway() {
    print(getway.runtimeType);
  }
}

void main() {
  DartGetway();
} 