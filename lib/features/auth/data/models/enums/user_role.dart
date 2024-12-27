import 'package:json_annotation/json_annotation.dart';

enum UserRole {
  @JsonValue('ADMIN')
  admin,

  @JsonValue('USER')
  user
}