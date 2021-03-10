import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'models/user.model.dart';

class UserService extends StateNotifier {
  UserService(state) : super(state);

  Future<bool> register({required String username, required String password}) {
    // TODO: implement register
    throw UnimplementedError();
  }

  Future<bool> login({required String username, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  User? getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}
