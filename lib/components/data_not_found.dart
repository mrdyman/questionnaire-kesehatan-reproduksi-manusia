import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LottieBuilder.asset("assets/anims/not-found.json"),
      ],
    );
  }
}
