import 'package:json_annotation/json_annotation.dart';

import '../../../auth/data/models/user_response_dto.dart';
import '../../../books/data/models/book_instance_response_dto.dart';

part 'reservation_response_dto.g.dart';

@JsonSerializable()
class ReservationResponseDto {
  int id;
  DateTime reservationDate;
  DateTime returnDate;
  DateTime dueDate;
  UserResponseDto user;
  BookInstanceResponseDto bookInstance;

  ReservationResponseDto(this.id, this.reservationDate, this.returnDate,
      this.dueDate, this.user, this.bookInstance);

  factory ReservationResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ReservationResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationResponseDtoToJson(this);
}