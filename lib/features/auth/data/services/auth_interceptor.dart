import 'package:dio/dio.dart';
import 'package:library_app_client/features/auth/data/repositories/auth_repository.dart';

class AuthInterceptor extends Interceptor {
  final AuthRepository authRepository;

  AuthInterceptor(this.authRepository);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await authRepository.getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }
}