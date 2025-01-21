import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:library_app_client/features/auth/data/repositories/auth_repository.dart';
import 'package:library_app_client/features/auth/presentation/state/login_state.dart';

class LoginNotifier extends StateNotifier<LoginState> {
  final AuthRepository authRepository;

  LoginNotifier(this.authRepository) : super(LoginState.initial());

  Future<void> login(String email, String password) async {
    state = state.copyWith(isLoading: false, errorMessage: null);
    try {
      await authRepository.login(email, password);
      state = state.copyWith(isLoading: false, success: true);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
        success: false
      );
    }
  }

  void resetState() {
    state = LoginState.initial();
  }
}