// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_instance_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookInstanceResponseDto _$BookInstanceResponseDtoFromJson(
        Map<String, dynamic> json) =>
    BookInstanceResponseDto(
      (json['id'] as num).toInt(),
      BookResponseDto.fromJson(json['book'] as Map<String, dynamic>),
      $enumDecode(_$BookStatusEnumMap, json['bookStatus']),
      ReservationResponseDto.fromJson(
          json['reservation'] as Map<String, dynamic>),
      (json['bookLoans'] as List<dynamic>)
          .map((e) => BookLoanResponseDto.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$BookInstanceResponseDtoToJson(
        BookInstanceResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
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
