import 'package:flutter/material.dart';
import 'package:one_auth_project_media/constant/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColor.primary, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColor.primary, width: 2),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: AppColor.text.withAlpha(180)),
        ),
      ),
    );
  }
}
