class NotInitializedError {
  final String _message;

  NotInitializedError(
    this._message,
  );

  @override
  String toString() {
    return _message;
  }
}
