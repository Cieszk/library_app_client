// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationResponseDto _$ReservationResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ReservationResponseDto(
      (json['id'] as num).toInt(),
      DateTime.parse(json['reservationDate'] as String),
      DateTime.parse(json['returnDate'] as String),
      DateTime.parse(json['dueDate'] as String),
      UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
      BookInstanceResponseDto.fromJson(
          json['bookInstance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReservationResponseDtoToJson(
        ReservationResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reservationDate': instance.reservationDate.toIso8601String(),
      'returnDate': instance.returnDate.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'user': instance.user,
      'bookInstance': instance.bookInstance,
    };
