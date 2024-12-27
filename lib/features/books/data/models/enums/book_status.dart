import 'package:json_annotation/json_annotation.dart';

enum BookStatus {
  @JsonValue('ACTIVE')
  active,

  @JsonValue('CANCELLED')
  cancelled,

  @JsonValue('DAMAGED')
  damaged,

  @JsonValue('DESTROYED')
  destroyed,

  @JsonValue('LOST')
  lost
}