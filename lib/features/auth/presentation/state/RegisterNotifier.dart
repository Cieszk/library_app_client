import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:library_app_client/features/auth/data/repositories/auth_repository.dart';
import 'register_state.dart';

class RegisterNotifier extends StateNotifier<RegisterState> {
  final AuthRepository authRepository;

  RegisterNotifier(this.authRepository) : super(RegisterState.initial());

  Future<void> register(String username, String password, String email) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      await authRepository.register(username, password, email);
      state = state.copyWith(isLoading: false, success: true);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
        success: false,
      );
    }
  }

  void reset() {
    state = RegisterState.initial();
  }
}
