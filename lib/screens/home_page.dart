import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../src/user/models/user.model.dart';
import '../src/user/user.service.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final userService = useProvider(userServiceProvider);
    final user = useProvider(userServiceProvider.state);

    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List App'),
      ),
      body: Center(
        child: user.when(
          data: (user) => Text(
            user == null ? 'Not logged in' : user.username,
            style: Theme.of(context).textTheme.headline4,
          ),
          loading: () => CircularProgressIndicator(),
          error: (e, stack) => Text(e.toString()),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              userService
                  .login(UserDto(username: 'appadmin1', password: 'omegalul'));
            },
            child: Text('Login'),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              userService.logout();
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
