import 'package:json_annotation/json_annotation.dart';

import '../../../authors/data/models/author_response_dto.dart';
import '../../../categories/data/models/category_response_dto.dart';
import '../../../publishers/data/models/publisher_response_dto.dart';

part 'book_response_dto.g.dart';

@JsonSerializable()
class BookResponseDto {
  int id;
  String title;
  String genre;
  int publishYear;
  String isbn;
  String language;
  int pageCount;
  String description;
  PublisherResponseDto publisherResponseDto;
  Set<AuthorResponseDto> authors;
  Set<CategoryResponseDto> categories;

  BookResponseDto(
      {required this.id,
      required this.title,
      required this.genre,
      required this.publishYear,
      required this.isbn,
      required this.language,
      required this.pageCount,
      required this.description,
      required this.publisherResponseDto,
      required this.authors,
      required this.categories});

  factory BookResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BookResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BookResponseDtoToJson(this);
}
