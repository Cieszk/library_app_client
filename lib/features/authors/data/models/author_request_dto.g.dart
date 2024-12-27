// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorRequestDto _$AuthorRequestDtoFromJson(Map<String, dynamic> json) =>
    AuthorRequestDto(
      json['firstName'] as String,
      json['lastName'] as String,
      json['nationality'] as String,
      json['biography'] as String,
      (json['books'] as List<dynamic>)
          .map((e) => BookRequestDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$AuthorRequestDtoToJson(AuthorRequestDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'nationality': instance.nationality,
      'biography': instance.biography,
      'books': instance.books.toList(),
    };
