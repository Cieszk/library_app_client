// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_instance_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookInstanceRequestDto _$BookInstanceRequestDtoFromJson(
        Map<String, dynamic> json) =>
    BookInstanceRequestDto(
      BookRequestDto.fromJson(json['book'] as Map<String, dynamic>),
      $enumDecode(_$BookStatusEnumMap, json['bookStatus']),
      ReservationRequestDto.fromJson(
          json['reservation'] as Map<String, dynamic>),
      (json['bookLoans'] as List<dynamic>)
          .map((e) => BookLoanRequestDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$BookInstanceRequestDtoToJson(
        BookInstanceRequestDto instance) =>
    <String, dynamic>{
      'book': instance.book,
      'bookStatus': _$BookStatusEnumMap[instance.bookStatus]!,
      'reservation': instance.reservation,
      'bookLoans': instance.bookLoans.toList(),
    };

const _$BookStatusEnumMap = {
  BookStatus.active: 'ACTIVE',
  BookStatus.cancelled: 'CANCELLED',
  BookStatus.damaged: 'DAMAGED',
  BookStatus.destroyed: 'DESTROYED',
  BookStatus.lost: 'LOST',
};
