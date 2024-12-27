// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublisherResponseDto _$PublisherResponseDtoFromJson(
        Map<String, dynamic> json) =>
    PublisherResponseDto(
      (json['id'] as num).toInt(),
      json['name'] as String,
      json['address'] as String,
      json['contactNumber'] as String,
      json['website'] as String,
      (json['books'] as List<dynamic>)
          .map((e) => BookResponseDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$PublisherResponseDtoToJson(
        PublisherResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'contactNumber': instance.contactNumber,
      'website': instance.website,
      'books': instance.books.toList(),
    };
