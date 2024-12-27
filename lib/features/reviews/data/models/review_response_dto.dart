import 'package:json_annotation/json_annotation.dart';

import '../../../auth/data/models/user_response_dto.dart';
import '../../../books/data/models/book_response_dto.dart';

part 'review_response_dto.g.dart';

@JsonSerializable()
class ReviewResponseDto {
  int id;
  String comment;
  int rating;
  DateTime reviewDate;
  UserResponseDto user;
  BookResponseDto book;

  ReviewResponseDto(this.id, this.comment, this.rating, this.reviewDate,
      this.user, this.book);

  factory ReviewResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewResponseDtoToJson(this);
}