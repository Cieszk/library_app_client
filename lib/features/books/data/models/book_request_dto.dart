import 'package:json_annotation/json_annotation.dart';

import '../../../authors/data/models/author_request_dto.dart';
import '../../../categories/data/models/category_request_dto.dart';
import '../../../publishers/data/models/publisher_request_dto.dart';

part 'book_request_dto.g.dart';

@JsonSerializable()
class BookRequestDto {
  String title;
  String genre;
  int publishYear;
  String isbn;
  String language;
  int pageCount;
  String description;
  PublisherRequestDto publisher;
  Set<AuthorRequestDto> authors;
  Set<CategoryRequestDto> categories;

  BookRequestDto(
      this.title,
      this.genre,
      this.publishYear,
      this.isbn,
      this.language,
      this.pageCount,
      this.description,
      this.publisher,
      this.authors,
      this.categories);

  factory BookRequestDto.fromJson(Map<String, dynamic> json) =>
      _$BookRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BookRequestDtoToJson(this);
}