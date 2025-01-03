class UnexpectedException implements Exception {
  final String message;

  UnexpectedException(this.message);

  @override
  String toString() {
    return "Unexpected Exception occured: $message";
  }
}