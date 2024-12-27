import 'package:json_annotation/json_annotation.dart';

import '../../../loans/data/models/book_loan_response_dto.dart';
import '../../../reservations/data/models/reservation_response_dto.dart';
import '../../../reviews/data/models/review_response_dto.dart';
import 'enums/user_role.dart';

part 'user_response_dto.g.dart';

@JsonSerializable()
class UserResponseDto {
  int id;
  String username;
  String email;
  bool isActive;
  UserRole role;
  Set<ReviewResponseDto> reviews;
  Set<ReservationResponseDto> reservations;
  Set<BookLoanResponseDto> bookLoans;

  UserResponseDto(this.id, this.username, this.email, this.isActive, this.role,
      this.reviews, this.reservations, this.bookLoans);

  factory UserResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseDtoToJson(this);
}