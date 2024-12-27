// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookUserRequest _$BookUserRequestFromJson(Map<String, dynamic> json) =>
    BookUserRequest(
      BookRequestDto.fromJson(json['book'] as Map<String, dynamic>),
      UserRequestDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookUserRequestToJson(BookUserRequest instance) =>
    <String, dynamic>{
      'book': instance.book,
      'user': instance.user,
    };
