import 'models/user.model.dart';

abstract class UserRepository {
  Future<bool> register({required String username, required String password});
  Future<bool> login({required String username, required String password});
  User? getUser();
}

class UserRepositoryDio implements UserRepository {
  @override
  Future<bool> register({required String username, required String password}) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<bool> login({required String username, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  User? getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}
