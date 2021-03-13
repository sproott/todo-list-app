import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as dotenv;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:todo_list_app/models/app_init_status.model.dart';

import 'providers/cookie_path.provider.dart';
import 'screens/error_page.dart';
import 'screens/home_page.dart';
import 'screens/loading_page.dart';

Future<AppInitStatus> _appInit(BuildContext context) async {
  await _initProviders(context);
  final success = await _requestStoragePermission();
  if (!success) return AppInitStatus.storagePermissionDenied();
  return AppInitStatus.success();
}

Future _initProviders(BuildContext context) async {
  context
      .read(cookiePathProvider)
      .setCookiePath((await getApplicationDocumentsDirectory()).path);
}

Future<bool> _requestStoragePermission() async {
  final result = await [
    Permission.storage,
  ].request();
  return result[Permission.storage]!.isGranted;
}

Future main() async {
  await dotenv.load();

  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _AppInitHandler(),
    );
  }
}

class _AppInitHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AppInitStatus>(
        future: _appInit(context),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            return snapshot.data!.when(
              success: () => HomePage(),
              storagePermissionDenied: () => ErrorPage(
                  message:
                      'App cannot work without storage permissions. Please go into the settings and enable storage permission. Then restart the app.'),
            );
          } else {
            return LoadingPage();
          }
        });
  }
}
