import 'package:json_annotation/json_annotation.dart';

part 'user_request_dto.g.dart';

@JsonSerializable()
class UserRequestDto {
  String username;
  String email;
  String role;

  UserRequestDto(this.username, this.email, this.role);

  factory UserRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UserRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserRequestDtoToJson(this);
}