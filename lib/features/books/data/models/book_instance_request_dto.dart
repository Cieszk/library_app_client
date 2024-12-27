import 'package:json_annotation/json_annotation.dart';

import '../../../loans/data/models/book_loan_request_dto.dart';
import '../../../reservations/data/models/reservation_request_dto.dart';
import 'book_request_dto.dart';
import 'enums/book_status.dart';

part 'book_instance_request_dto.g.dart';

@JsonSerializable()
class BookInstanceRequestDto {
  BookRequestDto book;
  BookStatus bookStatus;
  ReservationRequestDto reservation;
  Set<BookLoanRequestDto> bookLoans;

  BookInstanceRequestDto(
      this.book, this.bookStatus, this.reservation, this.bookLoans);

  factory BookInstanceRequestDto.fromJson(Map<String, dynamic> json) =>
      _$BookInstanceRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BookInstanceRequestDtoToJson(this);
}