// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookRequestDto _$BookRequestDtoFromJson(Map<String, dynamic> json) =>
    BookRequestDto(
      json['title'] as String,
      json['genre'] as String,
      (json['publishYear'] as num).toInt(),
      json['isbn'] as String,
      json['language'] as String,
      (json['pageCount'] as num).toInt(),
      json['description'] as String,
      PublisherRequestDto.fromJson(json['publisher'] as Map<String, dynamic>),
      (json['authors'] as List<dynamic>)
          .map((e) => AuthorRequestDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
      (json['categories'] as List<dynamic>)
          .map((e) => CategoryRequestDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$BookRequestDtoToJson(BookRequestDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'genre': instance.genre,
      'publishYear': instance.publishYear,
      'isbn': instance.isbn,
      'language': instance.language,
      'pageCount': instance.pageCount,
      'description': instance.description,
      'publisher': instance.publisher,
      'authors': instance.authors.toList(),
      'categories': instance.categories.toList(),
    };
