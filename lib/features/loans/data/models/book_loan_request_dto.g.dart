// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_loan_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookLoanRequestDto _$BookLoanRequestDtoFromJson(Map<String, dynamic> json) =>
    BookLoanRequestDto(
      DateTime.parse(json['loanDate'] as String),
      DateTime.parse(json['returnDate'] as String),
      DateTime.parse(json['dueDate'] as String),
      (json['fineAmount'] as num).toDouble(),
      (json['renewCount'] as num).toInt(),
      UserRequestDto.fromJson(json['user'] as Map<String, dynamic>),
      BookInstanceRequestDto.fromJson(
          json['bookInstance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookLoanRequestDtoToJson(BookLoanRequestDto instance) =>
    <String, dynamic>{
      'loanDate': instance.loanDate.toIso8601String(),
      'returnDate': instance.returnDate.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'fineAmount': instance.fineAmount,
      'renewCount': instance.renewCount,
      'user': instance.user,
      'bookInstance': instance.bookInstance,
    };
