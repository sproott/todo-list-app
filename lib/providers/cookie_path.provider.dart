import 'package:hooks_riverpod/hooks_riverpod.dart';

class CookiePathNotifier extends StateNotifier<String?> {
  CookiePathNotifier() : super(null);

  void setCookiePath(String cookiePath) {
    state ??= cookiePath;
  }
}

final cookiePathProvider = StateNotifierProvider<CookiePathNotifier>((ref) {
  return CookiePathNotifier();
});
