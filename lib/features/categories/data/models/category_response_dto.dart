import 'package:json_annotation/json_annotation.dart';

import '../../../books/data/models/book_response_dto.dart';

part 'category_response_dto.g.dart';

@JsonSerializable()
class CategoryResponseDto {
  int id;
  String name;
  String description;
  Set<BookResponseDto> books;

  CategoryResponseDto(this.id, this.name, this.description, this.books);

  factory CategoryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryResponseDtoToJson(this);
}