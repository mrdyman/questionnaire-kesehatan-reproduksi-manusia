import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:questionnaire/config/colors.dart';
import 'package:questionnaire/config/fonts.dart';

import '../../components/custom_elevated_button_icon.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScaffold,
      appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          backgroundColor: Colors.white),
      body: Container(
        margin: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
              topRight: Radius.circular(20.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: const Offset(1.1, 1.1),
                blurRadius: 10.0),
          ],
        ),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieBuilder.asset(
                "assets/anims/medic.json",
                height: 200,
              ),
            ],
          ),
          const Text(
            "Total Skor",
            style: TextStyle(
                fontFamily: fontNunito,
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
          const Text(
            "85",
            style: TextStyle(
                fontFamily: fontNunito,
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/icons/right.svg",
                    color: Colors.green,
                    height: 25,
                  ),
                  const Text(
                    "Jawaban Benar",
                    style: TextStyle(fontFamily: fontNunito, fontSize: 16),
                  ),
                  const Text(
                    "8",
                    style: TextStyle(
                        fontFamily: fontNunito,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 3,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.withOpacity(0.4),
                  ),
                ),
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/icons/wrong.svg",
                    color: Colors.red,
                    height: 25,
                  ),
                  const Text(
                    "Jawaban Salah",
                    style: TextStyle(fontFamily: fontNunito, fontSize: 16),
                  ),
                  const Text(
                    "2",
                    style: TextStyle(
                        fontFamily: fontNunito,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomElevatedButtonIcon(
                backgroundColor: Colors.green,
                label: "Halaman Utama",
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  height: 20,
                  color: Colors.white,
                ),
                onPressed: () => 1),
          ),
        ]),
      ),
    );
  }
}
