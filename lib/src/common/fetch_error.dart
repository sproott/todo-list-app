class FetchError {
  final String _message;

  FetchError(
    this._message,
  );

  @override
  String toString() {
    return _message;
  }
}
