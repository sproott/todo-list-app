import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../src/user/models/user-dto.model.dart';
import '../src/user/user.service.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final userService = useProvider(userServiceProvider);
    userService.login(UserDto(username: 'appadmin1', password: 'omegalul'));
    final user = userService.getUser();

    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List App'),
      ),
      body: Center(
        child: Text(
          user != null ? user.username : 'Not logged in',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
