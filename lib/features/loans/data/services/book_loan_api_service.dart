import 'package:dio/dio.dart';

import '../../../../core/exceptions/http_exception.dart';
import '../../../../shared/api_endpoints.dart';
import '../../../../shared/dto/book_user_request.dart';
import '../../../auth/data/models/user_request_dto.dart';
import '../../../books/data/models/book_instance_fine_dto.dart';
import '../models/book_loan_response_dto.dart';

class BookLoanApiService {
  final Dio dio;

  BookLoanApiService(this.dio);

  Future<Set<BookLoanResponseDto>> getCurrentUserLoans(UserRequestDto user) async {
    try {
      final response = await dio.get(
        ApiEndpoints.loansCurrent,
        data: user.toJson(),
      );
      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return data
            .map((item) => BookLoanResponseDto.fromJson(item as Map<String, dynamic>))
            .toSet();
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<BookLoanResponseDto> renewLoan(BookUserRequest bookUserRequest) async {
    try {
      final response = await dio.post(
        ApiEndpoints.loansRenew,
        data: bookUserRequest.toJson(),
      );
      if (response.statusCode == 200) {
        return BookLoanResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<BookLoanResponseDto> returnBook(BookUserRequest bookUserRequest) async {
    try {
      final response = await dio.post(
        ApiEndpoints.loansReturn,
        data: bookUserRequest.toJson(),
      );
      if (response.statusCode == 200) {
        return BookLoanResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<BookLoanResponseDto> createLoan(BookUserRequest bookUserRequest) async {
    try {
      final response = await dio.post(
        ApiEndpoints.loansBase,
        data: bookUserRequest.toJson(),
      );
      if (response.statusCode == 200) {
        return BookLoanResponseDto.fromJson(response.data);
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<Set<BookLoanResponseDto>> getLoanHistory(UserRequestDto user) async {
    try {
      final response = await dio.get(
        ApiEndpoints.loansHistory,
        data: user.toJson(),
      );
      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return data
            .map((item) => BookLoanResponseDto.fromJson(item as Map<String, dynamic>))
            .toSet();
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }

  Future<List<BookInstanceFineDto>> getUserFines(UserRequestDto user) async {
    try {
      final response = await dio.get(
        ApiEndpoints.loansFines,
        data: user.toJson(),
      );
      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return data
            .map((item) => BookInstanceFineDto.fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        throw HttpException(response.statusCode, response.statusMessage);
      }
    } on DioException catch (e) {
      throw HttpException(e.response?.statusCode, e.response?.statusMessage ?? e.message);
    }
  }
}