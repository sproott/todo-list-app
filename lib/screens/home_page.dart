import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/error.provider.dart';
import '../src/user/models/user.model.dart';
import '../src/user/user.service.dart';
import 'error_page.dart';
import 'loading_page.dart';

final userProvider = ScopedProvider<User>((ref) => throw UnimplementedError());

class _MainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final user = useProvider(userProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: Text(user.username),
    );
  }
}

class _LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: CircularProgressIndicator(),
    );
  }
}

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useErrorHandler(context);
    // final userService = useProvider(userServiceProvider);
    // userService.login(UserDto(username: 'appadmin1', password: 'omegalul'));
    final user = useProvider(userServiceProvider.state);

    return user.when(
      data: (user) => user != null
          ? ProviderScope(
              overrides: [userProvider.overrideWithValue(user)],
              child: _MainPage(),
            )
          : _LoginPage(),
      loading: () => LoadingPage(),
      error: (e, stack) => ErrorPage(
        message: e.toString(),
      ),
    );
  }
}

void useErrorHandler(BuildContext context) {
  final error = useProvider(errorProvider.state);
  final _errorProvider = useProvider(errorProvider);

  if (error != null) {
    print(error.toString());
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _errorProvider.clearError();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error')),
      );
    });
  }
}
