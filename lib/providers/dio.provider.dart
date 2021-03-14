import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../src/common/errors/fetch.error.dart';

import 'config.provider.dart';
import 'cookie_path.provider.dart';
import 'error.provider.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  dio.options.baseUrl = ref.read(configProvider).apiPath;
  dio.interceptors.add(InterceptorsWrapper(
    onError: (err) {
      ref.read(errorProvider).setError(FetchError.fromDioError(err));
      print('Dio error: ${err.toString()}');
    },
    onRequest: (req) => print('Dio request: ${req.method} ${req.uri}'),
    onResponse: (res) => print('Dio response: ${res.data.toString()}'),
  ));
  var cookieJar = PersistCookieJar(
      storage: FileStorage(ref.read(cookiePathProvider).value + '/.cookies/'));
  dio.interceptors.add(CookieManager(cookieJar));
  return dio;
});
