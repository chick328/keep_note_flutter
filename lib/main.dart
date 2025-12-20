import 'package:flutter/material.dart';
import 'package:keep_note/presentation/ui/common/theme/app_typography.dart';
import 'config/di/bloc_module.dart';
import 'config/di/data_module.dart';
import 'routing/router.dart';

void main() {
  // init di
  configureDataModuleDependencies();
  configureBlocModuleDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This paging is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Keep Note',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: appTypography,
      ),
      routerConfig: route,
    );
  }
}
