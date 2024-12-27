import 'package:json_annotation/json_annotation.dart';

import '../../../books/data/models/book_response_dto.dart';

part 'author_response_dto.g.dart';

@JsonSerializable()
class AuthorResponseDto {
  int id;
  String firstName;
  String lastName;
  String nationality;
  String biography;
  Set<BookResponseDto> books;

  AuthorResponseDto(this.id, this.firstName, this.lastName, this.nationality,
      this.biography, this.books);

  factory AuthorResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthorResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorResponseDtoToJson(this);
}