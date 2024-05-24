import 'package:common/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:github_viewer/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:main_viewer/main_viewer.dart';

void main() {
  configureApp();
  runApp(const MyApp());
}

void configureApp() {
  const environment =
      String.fromEnvironment('ENVIRONMENT_F', defaultValue: Environment.prod);
  configureDependencies(environment);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub API',
      theme: AppTheme.lightTheme,
      home: const RepositorySearchScreen(),
    );
  }
}
