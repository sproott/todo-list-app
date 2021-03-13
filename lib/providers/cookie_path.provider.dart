import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../src/common/app_init_value_notifier.dart';

class CookiePathNotifier extends AppInitValueNotifier<String> {}

final cookiePathProvider =
    StateNotifierProvider<CookiePathNotifier>((_) => CookiePathNotifier());
