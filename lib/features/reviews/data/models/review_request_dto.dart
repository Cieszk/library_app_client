import 'package:json_annotation/json_annotation.dart';

import '../../../../shared/dto/book_user_request.dart';

part 'review_request_dto.g.dart';

@JsonSerializable()
class ReviewRequestDto {
  String comment;
  int rating;
  DateTime reviewDate;
  BookUserRequest bookUserRequest;

  ReviewRequestDto(
      this.comment, this.rating, this.reviewDate, this.bookUserRequest);

  factory ReviewRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewRequestDtoToJson(this);
}