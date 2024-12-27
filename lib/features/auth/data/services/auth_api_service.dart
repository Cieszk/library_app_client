import 'package:dio/dio.dart';
import 'package:library_app_client/features/auth/data/models/login_response_dto.dart';
import 'package:library_app_client/features/auth/data/models/login_user_dto.dart';
import 'package:library_app_client/features/auth/data/models/register_user_dto.dart';

class AuthApiService {
  final Dio dio;

  AuthApiService(this.dio);

  Future<void> registerUser(RegisterUserDto request) async {
    final response = await dio.post('/auth/register', data: request.toJson());

    // TODO: Obsługa odpowiedzi
  }

  Future<String> loginUser(LoginUserDto request) async {
    final response = await dio.post('/auth/login', data: request.toJson());
    final loginResponse = LoginResponseDto.fromJson(response.data);
    return loginResponse.token;
  }

}