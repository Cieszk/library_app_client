// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublisherRequestDto _$PublisherRequestDtoFromJson(Map<String, dynamic> json) =>
    PublisherRequestDto(
      json['name'] as String,
      json['address'] as String,
      json['contactNumber'] as String,
      json['website'] as String,
      (json['books'] as List<dynamic>)
          .map((e) => BookRequestDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$PublisherRequestDtoToJson(
        PublisherRequestDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'contactNumber': instance.contactNumber,
      'website': instance.website,
      'books': instance.books.toList(),
    };
