import 'package:json_annotation/json_annotation.dart';
import 'package:library_app_client/features/books/data/models/book_request_dto.dart';

part 'author_request_dto.g.dart';

@JsonSerializable()
class AuthorRequestDto {
  String firstName;
  String lastName;
  String nationality;
  String biography;
  Set<BookRequestDto> books;

  AuthorRequestDto(this.firstName, this.lastName, this.nationality,
      this.biography, this.books);

  factory AuthorRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AuthorRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorRequestDtoToJson(this);
}