import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:questionnaire/components/custom_elevated_button_icon.dart';
import 'package:questionnaire/components/custom_text_field.dart';
import 'package:questionnaire/const/fonts.dart';
import 'package:questionnaire/presentation/dashboard/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieBuilder.asset(
                  "assets/anims/login.json",
                  height: 180,
                ),
              ],
            ),
            const Text(
              "Login",
              style: TextStyle(
                  fontFamily: fontNunito,
                  // fontWeight: FontWeight.w600,
                  fontSize: 28),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                    topRight: Radius.circular(8.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(1.1, 1.1),
                      blurRadius: 10.0),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      title: "Username",
                      hintText: "username",
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/icons/form-input.svg",
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      title: "Password",
                      hintText: "password",
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/icons/lock.svg",
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                  CustomElevatedButtonIcon(
                    label: "Login",
                    icon: SvgPicture.asset(
                      "assets/icons/login.svg",
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardScreen()),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () => 1,
                    child: const Text(
                      "Kembali ke menu utama",
                      style: TextStyle(
                          color: Colors.lightBlue,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
