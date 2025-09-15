import 'package:flutter/material.dart';
import 'package:one_auth_project_media/pages/home_page.dart';

import 'package:one_auth_project_media/constant/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int value = 0;
  ThemeMode themeMode = ThemeMode.light;

  void toggleTheme(int val) {
    setState(() {
      value = val;
      themeMode = val == 0 ? ThemeMode.light : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      home: HomePage(value: value, onChanged: toggleTheme),
    );
  }
}
