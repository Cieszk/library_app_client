// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationRequestDto _$ReservationRequestDtoFromJson(
        Map<String, dynamic> json) =>
    ReservationRequestDto(
      DateTime.parse(json['reservationDate'] as String),
      DateTime.parse(json['returnDate'] as String),
      DateTime.parse(json['dueDate'] as String),
      UserRequestDto.fromJson(json['user'] as Map<String, dynamic>),
      BookInstanceRequestDto.fromJson(
          json['bookInstance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReservationRequestDtoToJson(
        ReservationRequestDto instance) =>
    <String, dynamic>{
      'reservationDate': instance.reservationDate.toIso8601String(),
      'returnDate': instance.returnDate.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'user': instance.user,
      'bookInstance': instance.bookInstance,
    };
