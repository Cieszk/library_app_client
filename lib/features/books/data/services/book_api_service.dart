import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:library_app_client/core/exceptions/unknown_exception.dart';
import 'package:library_app_client/features/books/data/models/book_request_dto.dart';
import 'package:library_app_client/features/books/data/models/book_response_dto.dart';

class BookApiService {
  final Dio dio;
  String url = "/api/books";

  BookApiService(this.dio);

  Future<List<BookResponseDto>> getAllBooks(BookRequestDto request) async {
    try {
      final response = await dio.get(url, data: request.toJson());
      if (response.statusCode == 200) {
        final data = response.data;
        final books = (data as List<dynamic>)
            .map((json) => BookResponseDto.fromJson(json as Map<String, dynamic>))
            .toList();
        return books;
      } else {
        throw UnknownException(response.statusMessage!);
      }
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401) {
        throw Exception('You need to log in!');
      } else {
        throw Exception(exception.message!);
      }
    }
  }
}