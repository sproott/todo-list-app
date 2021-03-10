import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config.provider.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  dio.options.baseUrl = ref.read(configProvider).apiPath;
  dio.interceptors.add(InterceptorsWrapper(
    onError: (err) => print('Dio error: ${err.toString()}'),
    onRequest: (req) => print('Dio request: ${req.method} ${req.uri}'),
    onResponse: (res) => print('Dio response: ${res.data.toString()}'),
  ));
  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));
  return dio;
});
