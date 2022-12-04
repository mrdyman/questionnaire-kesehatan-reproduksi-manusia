import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:questionnaire/app/login/bloc/auth_bloc.dart';
import 'package:questionnaire/app/teori/bloc/teori_bloc.dart';
import 'package:questionnaire/app/teori/teori_screen.dart';
import 'package:questionnaire/components/custom_elevated_button_icon.dart';
import 'package:questionnaire/config/fonts.dart';

import '../biodata/biodata_screen.dart';
import '../biodata/bloc/biodata_bloc.dart';
import '../login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieBuilder.asset(
                  "assets/anims/welcome.json",
                  height: 250,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Aplikasi Pengetahuan Kesehatan Reproduksi Manusia.",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: fontNunito,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              "Aplikasi ini bertujuan untuk meningkatkan pengetahuan remaja tentang kesehatan reproduksi.",
              style: TextStyle(
                fontFamily: fontNunito,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: CustomElevatedButtonIcon(
              label: "PELAJARI TEORI",
              icon: SvgPicture.asset(
                "assets/icons/book.svg",
                height: 20,
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider<TeoriBloc>(
                      create: (context) => TeoriBloc(),
                      child: const TeoriScreen(),
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 18),
            child: CustomElevatedButtonIcon(
                label: "ISI QUESIONER",
                icon: SvgPicture.asset(
                  "assets/icons/form.svg",
                  height: 20,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BlocProvider<BiodataBloc>(
                                create: (context) => BiodataBloc(),
                                child: const BiodataScreen(),
                              )),
                    )),
          ),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => BlocProvider<AuthBloc>(
                          create: (context) => AuthBloc(),
                          child: const LoginScreen(),
                        ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Admin? ",
                  style: TextStyle(fontFamily: fontNunito, color: Colors.blue),
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      fontFamily: fontNunito,
                      color: Colors.blue,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
