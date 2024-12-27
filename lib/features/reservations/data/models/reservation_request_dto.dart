import 'package:json_annotation/json_annotation.dart';

import '../../../auth/data/models/user_request_dto.dart';
import '../../../books/data/models/book_instance_request_dto.dart';

part 'reservation_request_dto.g.dart';

@JsonSerializable()
class ReservationRequestDto {
  DateTime reservationDate;
  DateTime returnDate;
  DateTime dueDate;
  UserRequestDto user;
  BookInstanceRequestDto bookInstance;

  ReservationRequestDto(this.reservationDate, this.returnDate, this.dueDate,
      this.user, this.bookInstance);

  factory ReservationRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ReservationRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationRequestDtoToJson(this);
}