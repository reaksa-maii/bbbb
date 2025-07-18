// This is a generated file - do not edit.
//
// Generated from v4/main.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'main.pb.dart' as $0;

export 'main.pb.dart';

@$pb.GrpcServiceName('grpc.one.digital.OneMainGrpc')
class OneMainGrpcClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  OneMainGrpcClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.HelloReply> callPerson(
    $0.HelloRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$callPerson, request, options: options);
  }

  // method descriptors

  static final _$callPerson =
      $grpc.ClientMethod<$0.HelloRequest, $0.HelloReply>(
          '/grpc.one.digital.OneMainGrpc/CallPerson',
          ($0.HelloRequest value) => value.writeToBuffer(),
          $0.HelloReply.fromBuffer);
}

@$pb.GrpcServiceName('grpc.one.digital.OneMainGrpc')
abstract class OneMainGrpcServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc.one.digital.OneMainGrpc';

  OneMainGrpcServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.HelloRequest, $0.HelloReply>(
        'CallPerson',
        callPerson_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HelloRequest.fromBuffer(value),
        ($0.HelloReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.HelloReply> callPerson_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.HelloRequest> $request) async {
    return callPerson($call, await $request);
  }

  $async.Future<$0.HelloReply> callPerson(
      $grpc.ServiceCall call, $0.HelloRequest request);
}
