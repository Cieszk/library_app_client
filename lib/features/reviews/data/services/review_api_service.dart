import 'package:dio/dio.dart';

import '../../../../core/exceptions/http_exception.dart';
import '../../../../shared/api_endpoints.dart';
import '../../../books/data/models/book_request_dto.dart';
import '../models/review_request_dto.dart';
import '../models/review_response_dto.dart';

class ReviewApiService {
  final Dio dio;

  ReviewApiService(this.dio);

  Future<List<ReviewResponseDto>> getAllReviewsByBook(BookRequestDto request) async {
    try {
      final response = await dio.get(
        ApiEndpoints.reviewsBase,
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return data
            .map((item) => ReviewResponseDto.fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<ReviewResponseDto> getReviewById(int id, ReviewRequestDto request) async {
    try {
      final response = await dio.get(
        '${ApiEndpoints.reviewsBase}/$id',
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        return ReviewResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<ReviewResponseDto> addReview(ReviewRequestDto review) async {
    try {
      final response = await dio.post(
        ApiEndpoints.reviewsBase,
        data: review.toJson(),
      );
      if (response.statusCode == 200) {
        return ReviewResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<ReviewResponseDto> updateReview(ReviewRequestDto review) async {
    try {
      final response = await dio.put(
        ApiEndpoints.reviewsBase,
        data: review.toJson(),
      );
      if (response.statusCode == 200) {
        return ReviewResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<void> deleteReview(ReviewRequestDto review) async {
    try {
      final response = await dio.delete(
        ApiEndpoints.reviewsBase,
        data: review.toJson(),
      );
      if (response.statusCode != 204) {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }
}