import 'package:json_annotation/json_annotation.dart';

import '../../../books/data/models/book_request_dto.dart';

part 'category_request_dto.g.dart';

@JsonSerializable()
class CategoryRequestDto {
  String name;
  String description;
  Set<BookRequestDto> books;


  CategoryRequestDto(this.name, this.description, this.books);

  factory CategoryRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryRequestDtoToJson(this);
}