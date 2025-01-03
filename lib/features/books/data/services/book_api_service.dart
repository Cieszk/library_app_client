
import 'package:dio/dio.dart';
import 'package:library_app_client/features/books/data/models/book_request_dto.dart';
import 'package:library_app_client/features/books/data/models/book_response_dto.dart';

import '../../../../core/exceptions/http_exception.dart';
import '../../../../shared/api_endpoints.dart';

class BookApiService {
  final Dio dio;

  BookApiService(this.dio);

  Future<BookResponseDto> addBook(BookRequestDto request) async {
    try {
      final response = await dio.post(
        ApiEndpoints.booksBase,
        data: request.toJson(),
      );
      if (response.statusCode == 201) {
        return BookResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<BookResponseDto> updateBook(BookRequestDto request) async {
    try {
      final response = await dio.put(
        ApiEndpoints.booksBase,
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        return BookResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<void> deleteBook(BookRequestDto request) async {
    try {
      final response = await dio.delete(
        ApiEndpoints.booksBase,
        data: request.toJson(),
      );
      if (response.statusCode != 200) {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<List<BookResponseDto>> getAllBooks({int page = 0, int size = 10}) async {
    try {
      final response = await dio.get(
        ApiEndpoints.booksBase,
        queryParameters: {
          'page': page,
          'size': size,
        },
      );
      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return data
            .map((item) => BookResponseDto.fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }
}