import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:keep_note/presentation/ui/common/theme/app_typography.dart';
import 'config/di/bloc_module.dart';
import 'config/di/data_module.dart';
import 'config/di/domain_module.dart';
import 'routing/router.dart';

Future<void> main() async {
  // init di
  configureDataModuleDependencies();
  configureDomainModuleDependencies();
  configureBlocModuleDependencies();

  // init local push noti.
  WidgetsFlutterBinding.ensureInitialized();
  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  final androidNotiSetting = AndroidInitializationSettings(
    '@mipmap/ic_launcher',
  );
  final iosNotiSetting = DarwinInitializationSettings();

  final InitializationSettings initializationSettings = InitializationSettings(
    android: androidNotiSetting,
    iOS: iosNotiSetting,
  );
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin
      >()
      ?.requestNotificationsPermission();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This paging is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Keep Note',
      theme: ThemeData(useMaterial3: true, textTheme: appTypography),
      routerConfig: route,
    );
  }
}
