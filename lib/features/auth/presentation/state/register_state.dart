class RegisterState {
  final bool isLoading;
  final String? errorMessage;
  final bool success;

  RegisterState({
    required this.isLoading,
    this.errorMessage,
    required this.success,
  });

  factory RegisterState.initial() {
    return RegisterState(
      isLoading: false,
      errorMessage: null,
      success: false,
    );
  }

  RegisterState copyWith({
    bool? isLoading,
    String? errorMessage,
    bool? success,
  }) {
    return RegisterState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      success: success ?? this.success,
    );
  }
}
