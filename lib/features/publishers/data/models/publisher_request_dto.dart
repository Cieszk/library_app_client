import 'package:json_annotation/json_annotation.dart';

import '../../../books/data/models/book_request_dto.dart';

part 'publisher_request_dto.g.dart';

@JsonSerializable()
class PublisherRequestDto {
  String name;
  String address;
  String contactNumber;
  String website;
  Set<BookRequestDto> books;

  PublisherRequestDto(
      this.name, this.address, this.contactNumber, this.website, this.books);

  factory PublisherRequestDto.fromJson(Map<String, dynamic> json) =>
      _$PublisherRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PublisherRequestDtoToJson(this);
}