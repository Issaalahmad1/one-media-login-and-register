import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:one_auth_project_media/constant/app_color.dart';
import 'package:one_auth_project_media/constant/component/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key, this.value, required this.onChanged});
  final int? value;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
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
            title: const AppBarColumnRegister(),
          ),
          body: const BodyRegister(),
        ),
      ),
    );
  }
}
//body
class BodyRegister extends StatelessWidget {
  const BodyRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: const BoxDecoration(color: Colors.white),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "First Name ",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: AppColor.text,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          CustomTextField(hint: "Issa"),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Last Name ",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: AppColor.text,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          CustomTextField(hint: "Alahmad"),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: AppColor.text,
                  ),
                ),
                const SizedBox(height: 4.0),
                CustomTextField(hint: "issa@gmail.com "),
                const SizedBox(height: 16.0),
                const Text(
                  "Phone Number ",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: AppColor.text,
                  ),
                ),
                const SizedBox(height: 4.0),

                SizedBox(
                  height: 65.0,
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AppColor.primary,
                          width: 1,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                          width: 1,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AppColor.primary,
                          width: 2,
                        ),
                      ),
                    ),
                    initialCountryCode: 'IN',
                  ),
                ),

                const Text(
                  "Create Password ",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: AppColor.text,
                  ),
                ),
                const SizedBox(height: 4.0),
                CustomTextField(hint: "Type your password"),

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//appbar
class AppBarColumnRegister extends StatelessWidget {
  const AppBarColumnRegister({super.key});

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
            "Register ",
            maxLines: 2,
            style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 16.0),
        Row(
          children: <Text>[
            const Text(
              "Already have an account?  ",
              style: TextStyle(fontSize: 16.0),
            ),
            const Text(
              "Log In",

              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
