import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_elevated_button_icon.dart';

class DetailJawabanModal extends StatelessWidget {
  const DetailJawabanModal({
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
          const Text("Detail Jawaban"),
          SizedBox(height: size.height * 0.01),
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
        ]),
      ),
    );
  }
}
