// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorResponseDto _$AuthorResponseDtoFromJson(Map<String, dynamic> json) =>
    AuthorResponseDto(
      (json['id'] as num).toInt(),
      json['firstName'] as String,
      json['lastName'] as String,
      json['nationality'] as String,
      json['biography'] as String,
      (json['books'] as List<dynamic>)
          .map((e) => BookResponseDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$AuthorResponseDtoToJson(AuthorResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'nationality': instance.nationality,
      'biography': instance.biography,
      'books': instance.books.toList(),
    };
