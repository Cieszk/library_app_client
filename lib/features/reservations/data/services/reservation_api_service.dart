import 'package:dio/dio.dart';

import '../../../../core/exceptions/http_exception.dart';
import '../../../../shared/api_endpoints.dart';
import '../../../../shared/dto/book_user_request.dart';
import '../models/reservation_response_dto.dart';

class ReservationApiService {
  final Dio dio;

  ReservationApiService(this.dio);

  Future<ReservationResponseDto> addReservation(BookUserRequest bookUserRequest) async {
    try {
      final response = await dio.post(
        ApiEndpoints.reservationsBase,
        data: bookUserRequest.toJson(),
      );
      if (response.statusCode == 200) {
        return ReservationResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<void> deleteReservation(BookUserRequest bookUserRequest) async {
    try {
      final response = await dio.delete(
        ApiEndpoints.reservationsBase,
        data: bookUserRequest.toJson(),
      );
      if (response.statusCode != 204) {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<ReservationResponseDto> extendReservation(BookUserRequest bookUserRequest) async {
    try {
      final response = await dio.put(
        ApiEndpoints.reservationsBase,
        data: bookUserRequest.toJson(),
      );
      if (response.statusCode == 200) {
        return ReservationResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }
}