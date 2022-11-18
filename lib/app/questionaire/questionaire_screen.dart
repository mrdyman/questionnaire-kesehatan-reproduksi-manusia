import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:questionnaire/app/questionaire/result_screen.dart';
import 'package:questionnaire/components/custom_elevated_button_icon.dart';
import 'package:questionnaire/config/fonts.dart';

class QuestionaireScreen extends StatelessWidget {
  const QuestionaireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          backgroundColor: Colors.white),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieBuilder.asset(
                  "assets/anims/result.json",
                  height: 200,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                dashPattern: const [3, 3],
                color: Colors.blue,
                strokeWidth: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: size.width * 0.8,
                    child: const Text(
                      "Kesehatan reproduksi remaja merupakan suatu kondisi sehat yang menyangkut sistem, fungsi dan proses reproduksi pada remaja termasuk sehat secara mental serta sosial kultural.",
                      style: TextStyle(
                          fontFamily: fontNunito, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButtonIcon(
                  backgroundColor: Colors.green,
                  label: "Benar",
                  icon: SvgPicture.asset(
                    "assets/icons/right.svg",
                    height: 20,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResultScreen()),
                      )),
              const SizedBox(width: 20),
              CustomElevatedButtonIcon(
                  backgroundColor: Colors.red,
                  label: "Salah",
                  icon: SvgPicture.asset(
                    "assets/icons/wrong.svg",
                    height: 20,
                    color: Colors.white,
                  ),
                  onPressed: () => 1),
            ],
          )
        ],
      ),
    );
  }
}
