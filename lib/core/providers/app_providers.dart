import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:library_app_client/features/auth/data/repositories/auth_repository.dart';
import 'package:library_app_client/features/auth/data/services/auth_api_service.dart';
import 'package:library_app_client/features/auth/data/services/auth_interceptor.dart';

// Dostęp do FlutterSecureStorage
final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage();
});

// Interceptor który dokłada token z SecureStorage do nagłówka Authorization
final authInterceptorProvider = Provider<AuthInterceptor>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);
  return AuthInterceptor(secureStorage);
});

// Główny obiekt Dio dołączany z auth interceptor
final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  final interceptor = ref.watch(authInterceptorProvider);
  dio.interceptors.add(interceptor);

  dio.options.baseUrl = 'https://localhost:8080/api';
  return dio;
});

final authApiServiceProvider = Provider<AuthApiService>((ref) {
  final dio = ref.watch(dioProvider);
  return AuthApiService(dio);
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final apiService = ref.watch(authApiServiceProvider);
  final storage = ref.watch(secureStorageProvider);
  return AuthRepository(apiService, storage);
});