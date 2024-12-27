
import 'package:json_annotation/json_annotation.dart';
import 'package:library_app_client/features/books/data/models/book_response_dto.dart';

part 'login_user_dto.g.dart';

@JsonSerializable()
class LoginUserDto {
  String email;
  String password;

  LoginUserDto(this.email, this.password);

  factory LoginUserDto.fromJson(Map<String, dynamic> json) =>
      _$LoginUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginUserDtoToJson(this);
}