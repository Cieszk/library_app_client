import 'package:json_annotation/json_annotation.dart';
import 'package:library_app_client/features/books/data/models/book_instance_response_dto.dart';

part 'book_instance_fine_dto.g.dart';

@JsonSerializable()
class BookInstanceFineDto {
  BookInstanceResponseDto bookInstanceResponseDto;
  double fine;

  BookInstanceFineDto(
      this.bookInstanceResponseDto,
      this.fine
      );

  factory BookInstanceFineDto.fromJson(Map<String, dynamic> json) =>
      _$BookInstanceFineDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BookInstanceFineDtoToJson(this);
}