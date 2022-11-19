import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import '../config/fonts.dart';
import 'custom_elevated_button_icon.dart';

class CustomConfirmationDialog extends StatelessWidget {
  final String? dialogTitle;
  final int dialogType;
  final String dialogSubTitle;
  final String confirmTitle;
  final Function() onTap;
  const CustomConfirmationDialog({
    this.dialogTitle,
    this.dialogType = 1,
    required this.dialogSubTitle,
    required this.confirmTitle,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              dialogType == 1
                  ? LottieBuilder.asset("assets/anims/alert.json", width: 200)
                  : LottieBuilder.asset("assets/anims/error.json", width: 200),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                dialogTitle != null ? dialogTitle! : "Perhatian!",
                style: const TextStyle(
                  fontFamily: fontNunito,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              )
            ],
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            children: [
              Flexible(
                child: Text(
                  dialogSubTitle,
                  style: const TextStyle(
                    fontFamily: fontNunito,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomElevatedButtonIcon(
                  label: confirmTitle,
                  icon: SvgPicture.asset(
                    "assets/icons/right.svg",
                    height: 25,
                    color: Colors.white,
                  ),
                  backgroundColor:
                      dialogType == 1 ? Colors.blue : Colors.redAccent,
                  onPressed: () {
                    Navigator.pop(context);
                    onTap();
                  },
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomElevatedButtonIcon(
                  label: "Tutup",
                  icon: SvgPicture.asset(
                    "assets/icons/wrong.svg",
                    height: 25,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.amber,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
