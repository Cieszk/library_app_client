// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUserDto _$LoginUserDtoFromJson(Map<String, dynamic> json) => LoginUserDto(
      json['email'] as String,
      json['password'] as String,
    );

Map<String, dynamic> _$LoginUserDtoToJson(LoginUserDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
