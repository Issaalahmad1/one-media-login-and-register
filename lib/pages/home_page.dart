import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_auth_project_media/constant/app_color.dart';
import 'package:one_auth_project_media/pages/login_page.dart';
import 'package:one_auth_project_media/pages/register_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.value, required this.onChanged});
  final int value;
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
          image: DecorationImage(
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
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Padding>[
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: AnimatedToggleSwitch<int>.rolling(
                          current: value,
                          values: const [0, 1],
                          onChanged: onChanged,
                          iconBuilder: (val, foreground) {
                            return Icon(
                              val == 0 ? Icons.light_mode : Icons.dark_mode,
                              color: AppColor.onPrimary,
                            );
                          },
                          style: ToggleStyle(
                            backgroundColor: AppColor.onPrimary,
                            indicatorColor: value == 0
                                ? AppColor.pink
                                : AppColor.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                const  Center(
                    child: SizedBox(
                      height: 213,
                      width: 213,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/myphoto.jpg"),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Issa Alahmad",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: isDark ? AppColor.onPrimary : AppColor.text,
                    ),
                  ),
                  SizedBox(height: 80),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Text(
                      "One interface, an unforgettable identity.",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: isDark ? AppColor.onPrimary : AppColor.text,
                      ),
                    ),
                  ),
                const  SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Text(
                      "Your identity starts here. Design your presence, and be yourself.",
                      style: TextStyle(
                        color: isDark ? AppColor.onPrimary : AppColor.text,
                        fontSize: 12.5,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                 const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: SizedBox(
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
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  LoginPage(onChanged: onChanged, value: value),
                            ),
                          );
                        },
                        child:const Text("Sign In"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14.0,
                      vertical: 16.0,
                    ),
                    child: SizedBox(
                      width: double.infinity,

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 16.0,
                          ),
                          backgroundColor: Colors.transparent,
                          foregroundColor: isDark
                              ? AppColor.onPrimary
                              : AppColor.primary,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: isDark
                                  ? AppColor.onPrimary
                                  : AppColor.primary,
                            ),
                            borderRadius: BorderRadiusGeometry.circular(8),
                          ),
                        ),
                        onPressed: () { Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  RegisterPage(onChanged: onChanged, value: value),
                            ),
                          );},
                        child:const Text("Register"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
