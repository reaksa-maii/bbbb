// This is a generated file - do not edit.
//
// Generated from v4/main.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Person_PhoneType extends $pb.ProtobufEnum {
  static const Person_PhoneType PHONE_TYPE_UNSPECIFIED =
      Person_PhoneType._(0, _omitEnumNames ? '' : 'PHONE_TYPE_UNSPECIFIED');
  static const Person_PhoneType PHONE_TYPE_MOBILE =
      Person_PhoneType._(1, _omitEnumNames ? '' : 'PHONE_TYPE_MOBILE');
  static const Person_PhoneType PHONE_TYPE_HOME =
      Person_PhoneType._(2, _omitEnumNames ? '' : 'PHONE_TYPE_HOME');
  static const Person_PhoneType PHONE_TYPE_WORK =
      Person_PhoneType._(3, _omitEnumNames ? '' : 'PHONE_TYPE_WORK');

  static const $core.List<Person_PhoneType> values = <Person_PhoneType>[
    PHONE_TYPE_UNSPECIFIED,
    PHONE_TYPE_MOBILE,
    PHONE_TYPE_HOME,
    PHONE_TYPE_WORK,
  ];

  static final $core.List<Person_PhoneType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Person_PhoneType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Person_PhoneType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
