import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_auth_project_media/constant/app_color.dart';
import 'package:one_auth_project_media/constant/component/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.value, required this.onChanged});
  final int? value;
  final ValueChanged<int> onChanged;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage("assets/Gred.png"),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              isDark ? AppColor.text : AppColor.primary,
              isDark ? AppColor.primary.withAlpha(23) : AppColor.onPrimary,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
          appBar: AppBar(
            toolbarHeight: 220,
            backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
            foregroundColor: const Color.fromRGBO(242, 244, 255, 1),
            automaticallyImplyLeading: false,
            title: const AppBarColumLogin(),
          ),
          body: BodyLogin(),
        ),
      ),
    );
  }
}

class BodyLogin extends StatelessWidget {
  const BodyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: const BoxDecoration(color: Colors.white),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Email/Username ",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: AppColor.text,
              ),
            ),
            const SizedBox(height: 4.0),

            CustomTextField(hint: "issa@gmail.com"),
            const SizedBox(height: 16.0),
            const Text(
              "Password ",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: AppColor.text,
              ),
            ),
            const SizedBox(height: 16.0),

            CustomTextField(hint: "Type your password"),
            Row(
              children: <Widget>[
                Checkbox(value: true, onChanged: (va) {}),
                Text(
                  "Remember me",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: AppColor.text,
                  ),
                ),
                const Spacer(),
                const Text(
                  "Forget Password?",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  backgroundColor: AppColor.primary,
                  foregroundColor: AppColor.onPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text("Sign In"),
              ),
            ),
            const SizedBox(height: 16.0),

            Row(
              children: <Widget>[
                const Expanded(
                  child: Divider(thickness: 0.5, color: Colors.grey),
                ),
                Text(
                  "  Or Login Width  ",
                  style: TextStyle(color: AppColor.text.withAlpha(140)),
                ),
                const Expanded(
                  child: Divider(thickness: 0.5, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 16.0,
                        ),
                        backgroundColor: Colors.transparent,
                        foregroundColor: AppColor.text,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: AppColor.primary),
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      label: const Text(
                        "Google",
                        style: TextStyle(color: AppColor.primary),
                      ),
                      icon: Image.asset(
                        "assets/google.png",
                        height: 32,
                        width: 32,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 16.0,
                        ),
                        backgroundColor: Colors.transparent,
                        foregroundColor: AppColor.text,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: AppColor.primary),
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      label: const Text(
                        "Facebook",
                        style: TextStyle(color: AppColor.primary),
                      ),
                      icon: Image.asset(
                        "assets/Facebook.png",
                        height: 32,
                        width: 32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarColumLogin extends StatelessWidget {
  const AppBarColumLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <IconButton>[
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        const SizedBox(
          child: Text(
            "Sign in to your account",
            maxLines: 2,
            style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 16.0),
        Row(
          children: <Text>[
            const Text(
              "Don’t have an account? ",
              style: TextStyle(fontSize: 16.0),
            ),
            const Text(
              "Sign up",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
