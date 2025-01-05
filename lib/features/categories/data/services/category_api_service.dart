import 'package:dio/dio.dart';

import '../../../../core/exceptions/http_exception.dart';
import '../../../../shared/api_endpoints.dart';
import '../models/category_request_dto.dart';
import '../models/category_response_dto.dart';

class CategoryApiService {
  final Dio dio;

  CategoryApiService(this.dio);

  Future<Set<CategoryResponseDto>> getAllCategories() async {
    try {
      final response = await dio.get(ApiEndpoints.categoriesAll);
      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return data
            .map((item) => CategoryResponseDto.fromJson(item as Map<String, dynamic>))
            .toSet();
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<CategoryResponseDto> getCategory(CategoryRequestDto request) async {
    try {
      final response = await dio.get(
        ApiEndpoints.categoriesBase,
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        return CategoryResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<CategoryResponseDto> addCategory(CategoryRequestDto request) async {
    try {
      final response = await dio.post(
        ApiEndpoints.categoriesBase,
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        return CategoryResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<CategoryResponseDto> updateCategory(int id, CategoryRequestDto request) async {
    try {
      final response = await dio.put(
        '${ApiEndpoints.categoriesBase}/$id',
        data: request.toJson(),
      );
      if (response.statusCode == 200) {
        return CategoryResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<void> deleteCategory(int id) async {
    try {
      final response = await dio.delete('${ApiEndpoints.categoriesBase}/$id');
      if (response.statusCode != 204) {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }
}