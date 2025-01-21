class LoginState {
  final bool isLoading;
  final String? errorMessage;
  final bool success;

  LoginState({
    required this.isLoading,
    this.errorMessage,
    required this.success
  });

  factory LoginState.initial() {
    return LoginState(
      isLoading: false,
      errorMessage: null,
      success: false
    );
  }

  LoginState copyWith({
    bool? isLoading,
    String? errorMessage,
    bool? success
}) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      success: success ?? this.success
    );
  }
}