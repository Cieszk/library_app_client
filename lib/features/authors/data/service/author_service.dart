import 'package:dio/dio.dart';

import '../../../../core/exceptions/http_exception.dart';
import '../../../../shared/api_endpoints.dart';
import '../../../books/data/models/book_request_dto.dart';
import '../models/author_request_dto.dart';
import '../models/author_response_dto.dart';

class AuthorApiService {
  final Dio dio;

  AuthorApiService(this.dio);

  Future<AuthorResponseDto> getAuthorById(int id) async {
    try {
      final response = await dio.get('${ApiEndpoints.authorsBase}/$id');
      if (response.statusCode == 200) {
        return AuthorResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<List<AuthorResponseDto>> getAuthorByName(AuthorRequestDto request) async {
    try {
      final response = await dio.get(
        ApiEndpoints.authorsBase,
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return data
            .map((item) => AuthorResponseDto.fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<AuthorResponseDto> getAuthorByBook(BookRequestDto request) async {
    try {
      final response = await dio.get(
        ApiEndpoints.authorsBook,
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        return AuthorResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<AuthorResponseDto> createAuthor(AuthorRequestDto request) async {
    try {
      final response = await dio.post(
        ApiEndpoints.authorsBase,
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        return AuthorResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<AuthorResponseDto> updateAuthor(int id, AuthorRequestDto request) async {
    try {
      final response = await dio.put(
        '${ApiEndpoints.authorsBase}/$id',
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        return AuthorResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<void> deleteAuthor(int id) async {
    try {
      final response = await dio.delete('${ApiEndpoints.authorsBase}/$id');
      if (response.statusCode != 204) {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }
}
