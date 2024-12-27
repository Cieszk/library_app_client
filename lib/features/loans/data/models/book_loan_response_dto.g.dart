// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_loan_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookLoanResponseDto _$BookLoanResponseDtoFromJson(Map<String, dynamic> json) =>
    BookLoanResponseDto(
      (json['id'] as num).toInt(),
      DateTime.parse(json['loanDate'] as String),
      DateTime.parse(json['returnDate'] as String),
      DateTime.parse(json['dueDate'] as String),
      (json['fineAmount'] as num).toDouble(),
      (json['renewCount'] as num).toInt(),
      UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
      BookInstanceResponseDto.fromJson(
          json['bookInstance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookLoanResponseDtoToJson(
        BookLoanResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'loanDate': instance.loanDate.toIso8601String(),
      'returnDate': instance.returnDate.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'fineAmount': instance.fineAmount,
      'renewCount': instance.renewCount,
      'user': instance.user,
      'bookInstance': instance.bookInstance,
    };
