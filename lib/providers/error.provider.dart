import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../src/common/fetch_error.dart';

class ErrorNotifier extends StateNotifier<FetchError?> {
  ErrorNotifier() : super(null);

  void setError(FetchError error) {
    state = error;
  }

  void clearError() {
    state = null;
  }
}

final errorProvider =
    StateNotifierProvider<ErrorNotifier>((ref) => ErrorNotifier());
