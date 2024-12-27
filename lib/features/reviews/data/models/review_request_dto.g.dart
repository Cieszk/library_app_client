// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewRequestDto _$ReviewRequestDtoFromJson(Map<String, dynamic> json) =>
    ReviewRequestDto(
      json['comment'] as String,
      (json['rating'] as num).toInt(),
      DateTime.parse(json['reviewDate'] as String),
      BookUserRequest.fromJson(json['bookUserRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewRequestDtoToJson(ReviewRequestDto instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'rating': instance.rating,
      'reviewDate': instance.reviewDate.toIso8601String(),
      'bookUserRequest': instance.bookUserRequest,
    };
