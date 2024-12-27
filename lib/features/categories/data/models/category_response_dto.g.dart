// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryResponseDto _$CategoryResponseDtoFromJson(Map<String, dynamic> json) =>
    CategoryResponseDto(
      (json['id'] as num).toInt(),
      json['name'] as String,
      json['description'] as String,
      (json['books'] as List<dynamic>)
          .map((e) => BookResponseDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$CategoryResponseDtoToJson(
        CategoryResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'books': instance.books.toList(),
    };
