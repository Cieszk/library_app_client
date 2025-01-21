import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:library_app_client/features/auth/data/repositories/auth_repository.dart';
import 'package:library_app_client/features/auth/data/services/auth_api_service.dart';
import 'package:library_app_client/features/auth/data/services/auth_interceptor.dart';
import 'package:library_app_client/features/auth/presentation/state/login_notifier.dart';

import '../../features/auth/presentation/state/RegisterNotifier.dart';
import '../../features/auth/presentation/state/login_state.dart';
import '../../features/auth/presentation/state/register_state.dart';

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

final loginNotifierProvider =
    StateNotifierProvider<LoginNotifier, LoginState>((ref) {
      final authRepo = ref.watch(authRepositoryProvider);
      return LoginNotifier(authRepo);
    });

final registerNotifierProvider =
StateNotifierProvider<RegisterNotifier, RegisterState>((ref) {
  final repo = ref.watch(authRepositoryProvider);
  return RegisterNotifier(repo);
});
