// This is a generated file - do not edit.
//
// Generated from v4/main.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use helloRequestDescriptor instead')
const HelloRequest$json = {
  '1': 'HelloRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `HelloRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloRequestDescriptor =
    $convert.base64Decode('CgxIZWxsb1JlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use helloReplyDescriptor instead')
const HelloReply$json = {
  '1': 'HelloReply',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `HelloReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloReplyDescriptor = $convert
    .base64Decode('CgpIZWxsb1JlcGx5EhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use personDescriptor instead')
const Person$json = {
  '1': 'Person',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {
      '1': 'phones',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.grpc.one.digital.Person.PhoneNumber',
      '10': 'phones'
    },
  ],
  '3': [Person_PhoneNumber$json],
  '4': [Person_PhoneType$json],
};

@$core.Deprecated('Use personDescriptor instead')
const Person_PhoneNumber$json = {
  '1': 'PhoneNumber',
  '2': [
    {'1': 'number', '3': 1, '4': 1, '5': 9, '10': 'number'},
    {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.grpc.one.digital.Person.PhoneType',
      '10': 'type'
    },
  ],
};

@$core.Deprecated('Use personDescriptor instead')
const Person_PhoneType$json = {
  '1': 'PhoneType',
  '2': [
    {'1': 'PHONE_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'PHONE_TYPE_MOBILE', '2': 1},
    {'1': 'PHONE_TYPE_HOME', '2': 2},
    {'1': 'PHONE_TYPE_WORK', '2': 3},
  ],
};

/// Descriptor for `Person`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List personDescriptor = $convert.base64Decode(
    'CgZQZXJzb24SEgoEbmFtZRgBIAEoCVIEbmFtZRIOCgJpZBgCIAEoBVICaWQSFAoFZW1haWwYAy'
    'ABKAlSBWVtYWlsEjwKBnBob25lcxgEIAMoCzIkLmdycGMub25lLmRpZ2l0YWwuUGVyc29uLlBo'
    'b25lTnVtYmVyUgZwaG9uZXMaXQoLUGhvbmVOdW1iZXISFgoGbnVtYmVyGAEgASgJUgZudW1iZX'
    'ISNgoEdHlwZRgCIAEoDjIiLmdycGMub25lLmRpZ2l0YWwuUGVyc29uLlBob25lVHlwZVIEdHlw'
    'ZSJoCglQaG9uZVR5cGUSGgoWUEhPTkVfVFlQRV9VTlNQRUNJRklFRBAAEhUKEVBIT05FX1RZUE'
    'VfTU9CSUxFEAESEwoPUEhPTkVfVFlQRV9IT01FEAISEwoPUEhPTkVfVFlQRV9XT1JLEAM=');

@$core.Deprecated('Use addressBookDescriptor instead')
const AddressBook$json = {
  '1': 'AddressBook',
  '2': [
    {
      '1': 'people',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.grpc.one.digital.Person',
      '10': 'people'
    },
  ],
};

/// Descriptor for `AddressBook`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addressBookDescriptor = $convert.base64Decode(
    'CgtBZGRyZXNzQm9vaxIwCgZwZW9wbGUYASADKAsyGC5ncnBjLm9uZS5kaWdpdGFsLlBlcnNvbl'
    'IGcGVvcGxl');
