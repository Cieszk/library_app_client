import 'package:library_app_client/features/auth/data/models/login_user_dto.dart';
import 'package:library_app_client/features/auth/data/models/register_user_dto.dart';
import 'package:library_app_client/features/auth/data/services/auth_api_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthRepository {
  final AuthApiService apiService;
  final FlutterSecureStorage secureStorage;

  AuthRepository(this.apiService, this.secureStorage);

  Future<void> register(String username, String password, String email) async {
    final dto = RegisterUserDto(email, password, username);
    await apiService.registerUser(dto);

    // TODO: Obsługa sukcesu/błędu
  }

  Future<void> login(String email, String password) async {
    final dto = LoginUserDto(email, password);
    final token = await apiService.loginUser(dto);
    await secureStorage.write(key: 'jwt_token', value: token);
  }

  Future<String?> getToken() async {
    return await secureStorage.read(key: 'jwt_token');
  }

  Future<void> logout() async {
    await secureStorage.delete(key: 'jwt_token');
  }
}