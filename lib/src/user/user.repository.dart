import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/dio.provider.dart';
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
  Future<bool> register(UserDto userDto) async {
    return jsonDecode(
        (await _dio.post('$userRoute/register', data: userDto.toJson())).data);
  }

  @override
  Future<bool> login(UserDto userDto) async {
    return jsonDecode(
        (await _dio.post('$userRoute/login', data: userDto.toJson())).data);
  }

  @override
  Future<bool> logout() async {
    return jsonDecode((await _dio.post('$userRoute/logout')).data);
  }

  @override
  Future<User?> getUser() async {
    final response = await _dio.get('$userRoute');
    return response.data != '' ? User.fromJson(response.data) : null;
  }
}

final userRepositoryProvider =
    Provider<UserRepository>((ref) => UserRepositoryDio(ref.read(dioProvider)));
