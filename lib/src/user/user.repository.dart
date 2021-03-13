import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/dio.provider.dart';
import '../common/fetch_error.dart';
import 'models/user.model.dart';

abstract class UserRepository {
  Future<bool> register(UserDto userDto);
  Future<bool> login(UserDto userDto);
  Future<bool> logout();
  Future<User?> getUser();
}

final String userRoute = '/user';

class UserRepositoryDio implements UserRepository {
  final Dio _dio;

  const UserRepositoryDio(this._dio);

  @override
  Future<bool> register(UserDto userDto) => _withRethrow(() async => jsonDecode(
          (await _dio.post('$userRoute/register', data: userDto.toJson())).data)
      as bool)();

  @override
  Future<bool> login(UserDto userDto) => _withRethrow(() async => jsonDecode(
          (await _dio.post('$userRoute/login', data: userDto.toJson())).data)
      as bool)();

  @override
  Future<bool> logout() => _withRethrow(() async =>
      jsonDecode((await _dio.post('$userRoute/logout')).data) as bool)();

  @override
  Future<User?> getUser() => _withRethrow(() async {
        final response = await _dio.get('$userRoute');
        return response.data != '' ? User.fromJson(response.data) : null;
      })();

  Future<T> Function() _withRethrow<T>(Future<T> Function() callback) =>
      () async {
        try {
          return await callback();
        } on DioError catch (e) {
          throw FetchError(e.message);
        }
      };
}

final userRepositoryProvider =
    Provider<UserRepository>((ref) => UserRepositoryDio(ref.read(dioProvider)));
