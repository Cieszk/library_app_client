import 'package:json_annotation/json_annotation.dart';

import '../../../auth/data/models/user_response_dto.dart';
import '../../../books/data/models/book_instance_response_dto.dart';

part 'book_loan_response_dto.g.dart';

@JsonSerializable()
class BookLoanResponseDto {
  int id;
  DateTime loanDate;
  DateTime returnDate;
  DateTime dueDate;
  double fineAmount;
  int renewCount;
  UserResponseDto user;
  BookInstanceResponseDto bookInstance;

  BookLoanResponseDto(this.id, this.loanDate, this.returnDate, this.dueDate,
      this.fineAmount, this.renewCount, this.user, this.bookInstance);

  factory BookLoanResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BookLoanResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BookLoanResponseDtoToJson(this);
}