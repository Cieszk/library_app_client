import 'package:dio/dio.dart';
import 'package:library_app_client/core/exceptions/auth_exception.dart';
import 'package:library_app_client/features/auth/data/models/login_response_dto.dart';
import 'package:library_app_client/features/auth/data/models/login_user_dto.dart';
import 'package:library_app_client/features/auth/data/models/register_user_dto.dart';

class AuthApiService {
  final Dio dio;

  AuthApiService(this.dio);

  Future<void> registerUser(RegisterUserDto request) async {
    try {
      final response = await dio.post('/auth/register', data: request.toJson());
    } on DioException catch (exception) {
      throw AuthException(exception.message!);
    }
  }

  Future<String> loginUser(LoginUserDto request) async {
    try {
      final response = await dio.post('/auth/login', data: request.toJson());
      if (response.statusCode == 200) {
        final loginResponse = LoginResponseDto.fromJson(response.data);
        return loginResponse.token;
      } else {
        throw AuthException('Unexpected status code: ${response.statusCode}');
      }
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401) {
        throw AuthException('Invalid credentials');
      } else {
        throw AuthException(exception.message!);
      }
    }
    
    
  }

}