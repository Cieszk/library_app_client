class HttpException implements Exception {
  final int? statusCode;
  final String? statusMessage;

  HttpException(this.statusCode, this.statusMessage);

  @override
  String toString() => 'HttpException(statusCode: $statusCode, message: $statusMessage)';
}