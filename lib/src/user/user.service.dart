import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'models/user-dto.model.dart';
import 'user.repository.dart';

import 'models/user.model.dart';

class UserService extends StateNotifier {
  final UserRepository _userRepository;

  User? _user;

  UserService(
    this._userRepository,
  ) : super(null);

  Future register(UserDto userDto) async {
    return _withRefetch(() => _userRepository.register(userDto))();
  }

  Future<bool> login(UserDto userDto) async {
    return _withRefetch(() => _userRepository.login(userDto))();
  }

  User? getUser() {
    return _user;
  }

  Future<bool> Function() _withRefetch(Future<bool> Function() callback) {
    return () async {
      if (await callback()) {
        _user = await _userRepository.getUser();
        return true;
      }
      return false;
    };
  }
}

final userServiceProvider = StateNotifierProvider<UserService>(
    (ref) => UserService(ref.read(userRepositoryProvider)));
