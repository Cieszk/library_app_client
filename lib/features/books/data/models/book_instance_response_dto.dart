import 'package:json_annotation/json_annotation.dart';
import 'package:library_app_client/features/books/data/models/enums/book_status.dart';

import '../../../loans/data/models/book_loan_response_dto.dart';
import '../../../reservations/data/models/reservation_response_dto.dart';
import 'book_response_dto.dart';

part 'book_instance_response_dto.g.dart';

@JsonSerializable()
class BookInstanceResponseDto {
  int id;
  BookResponseDto book;
  BookStatus bookStatus;
  ReservationResponseDto reservation;
  Set<BookLoanResponseDto> bookLoans;

  BookInstanceResponseDto(
      this.id, this.book, this.bookStatus, this.reservation, this.bookLoans);

  factory BookInstanceResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BookInstanceResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BookInstanceResponseDtoToJson(this);
}