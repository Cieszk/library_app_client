// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookResponseDto _$BookResponseDtoFromJson(Map<String, dynamic> json) =>
    BookResponseDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      genre: json['genre'] as String,
      publishYear: (json['publishYear'] as num).toInt(),
      isbn: json['isbn'] as String,
      language: json['language'] as String,
      pageCount: (json['pageCount'] as num).toInt(),
      description: json['description'] as String,
      publisherResponseDto: PublisherResponseDto.fromJson(
          json['publisherResponseDto'] as Map<String, dynamic>),
      authors: (json['authors'] as List<dynamic>)
          .map((e) => AuthorResponseDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryResponseDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$BookResponseDtoToJson(BookResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'genre': instance.genre,
      'publishYear': instance.publishYear,
      'isbn': instance.isbn,
      'language': instance.language,
      'pageCount': instance.pageCount,
      'description': instance.description,
      'publisherResponseDto': instance.publisherResponseDto,
      'authors': instance.authors.toList(),
      'categories': instance.categories.toList(),
    };
