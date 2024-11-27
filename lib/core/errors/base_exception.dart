abstract class BaseException implements Exception {
  final String message;
  final dynamic stackTracing;

  const BaseException({
    required this.message,
    this.stackTracing,
  });
}
