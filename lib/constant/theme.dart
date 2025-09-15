import 'package:flutter/material.dart';
import 'package:one_auth_project_media/constant/app_color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.transparent,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(bodyMedium: TextStyle(color: AppColor.text)),
  );
}
