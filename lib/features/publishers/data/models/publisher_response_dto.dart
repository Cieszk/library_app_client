import 'package:json_annotation/json_annotation.dart';
import 'package:library_app_client/features/books/data/models/book_response_dto.dart';

part 'publisher_response_dto.g.dart';

@JsonSerializable()
class PublisherResponseDto {
    int id;
    String name;
    String address;
    String contactNumber;
    String website;
    Set<BookResponseDto> books;

    PublisherResponseDto(this.id, this.name, this.address, this.contactNumber,
      this.website, this.books);


    factory PublisherResponseDto.fromJson(Map<String, dynamic> json) =>
        _$PublisherResponseDtoFromJson(json);

    Map<String, dynamic> toJson() => _$PublisherResponseDtoToJson(this);
}