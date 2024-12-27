// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryRequestDto _$CategoryRequestDtoFromJson(Map<String, dynamic> json) =>
    CategoryRequestDto(
      json['name'] as String,
      json['description'] as String,
      (json['books'] as List<dynamic>)
          .map((e) => BookRequestDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$CategoryRequestDtoToJson(CategoryRequestDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'books': instance.books.toList(),
    };
