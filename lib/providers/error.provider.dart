import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../src/common/errors/app.error.dart';

class ErrorNotifier extends StateNotifier<AppError?> {
  ErrorNotifier() : super(null);

  void setError(AppError error) {
    state = error;
  }

  void clearError() {
    state = null;
  }
}

final errorProvider =
    StateNotifierProvider<ErrorNotifier>((ref) => ErrorNotifier());
