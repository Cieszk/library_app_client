// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewResponseDto _$ReviewResponseDtoFromJson(Map<String, dynamic> json) =>
    ReviewResponseDto(
      (json['id'] as num).toInt(),
      json['comment'] as String,
      (json['rating'] as num).toInt(),
      DateTime.parse(json['reviewDate'] as String),
      UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
      BookResponseDto.fromJson(json['book'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewResponseDtoToJson(ReviewResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'rating': instance.rating,
      'reviewDate': instance.reviewDate.toIso8601String(),
      'user': instance.user,
      'book': instance.book,
    };
