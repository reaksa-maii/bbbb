import 'package:dart_grpc_client/dart_grpc_client.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
