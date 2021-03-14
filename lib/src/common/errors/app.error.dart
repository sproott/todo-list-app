class AppError implements Exception {
  AppError([this.message]);

  String? message;

  @override
  String toString() {
    return 'AppError: $message';
  }
}
