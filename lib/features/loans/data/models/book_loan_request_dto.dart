import 'package:json_annotation/json_annotation.dart';

import '../../../auth/data/models/user_request_dto.dart';
import '../../../books/data/models/book_instance_request_dto.dart';

part 'book_loan_request_dto.g.dart';

@JsonSerializable()
class BookLoanRequestDto {
  DateTime loanDate;
  DateTime returnDate;
  DateTime dueDate;
  double fineAmount;
  int renewCount;
  UserRequestDto user;
  BookInstanceRequestDto bookInstance;

  BookLoanRequestDto(this.loanDate, this.returnDate, this.dueDate,
      this.fineAmount, this.renewCount, this.user, this.bookInstance);

  factory BookLoanRequestDto.fromJson(Map<String, dynamic> json) =>
      _$BookLoanRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BookLoanRequestDtoToJson(this);
}