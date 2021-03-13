import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../common/fetch_error.dart';
import 'models/user.model.dart';
import 'user.repository.dart';

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

  Future<bool> logout() => _withRefetch(() async {
        try {
          final result = await _userRepository.logout();
          return result;
        } on FetchError catch (e) {
          state = AsyncError(e);
          return false;
        }
      })();

  Future<bool> Function() _withRefetch(Future<bool> Function() callback) =>
      () async {
        if (await callback()) {
          _refetch();
          return true;
        }
        return false;
      };

  void _refetch() async {
    state = AsyncLoading();
    try {
      state = AsyncData(await _userRepository.getUser());
    } on FetchError catch (e) {
      state = AsyncError(e);
    }
  }
}

final userServiceProvider =
    StateNotifierProvider<UserService>((ref) => UserService(
          ref.read(userRepositoryProvider),
        ));
