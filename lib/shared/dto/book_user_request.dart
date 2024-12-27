import 'package:json_annotation/json_annotation.dart';
import 'package:library_app_client/features/auth/data/models/user_request_dto.dart';
import 'package:library_app_client/features/books/data/models/book_request_dto.dart';

part 'book_user_request.g.dart';

@JsonSerializable()
class BookUserRequest {
  BookRequestDto book;
  UserRequestDto user;

  BookUserRequest(this.book, this.user);

  factory BookUserRequest.fromJson(Map<String, dynamic> json) =>
      _$BookUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BookUserRequestToJson(this);
}