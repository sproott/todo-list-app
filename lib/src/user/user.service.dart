import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'user.repository.dart';

import 'models/user.model.dart';

class UserService extends StateNotifier<AsyncValue<User?>> {
  final UserRepository _userRepository;

  UserService(
    this._userRepository,
  ) : super(AsyncLoading()) {
    _refetch();
  }

  Future<bool> register(UserDto userDto) =>
      _withRefetch(() => _userRepository.register(userDto))();

  Future<bool> login(UserDto userDto) =>
      _withRefetch(() => _userRepository.login(userDto))();

  Future<bool> logout() => _withRefetch(() => _userRepository.logout())();

  Future<bool> Function() _withRefetch(Future<bool> Function() callback) {
    return () async {
      if (await callback()) {
        _refetch();
        return true;
      }
      return false;
    };
  }

  void _refetch() async {
    state = AsyncLoading();
    state = AsyncData(await _userRepository.getUser());
  }
}

final userServiceProvider = StateNotifierProvider<UserService>(
    (ref) => UserService(ref.read(userRepositoryProvider)));
