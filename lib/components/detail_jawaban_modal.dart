import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:questionnaire/models/result.dart';

import '../config/fonts.dart';
import 'custom_elevated_button_icon.dart';

class DetailJawabanModal extends StatelessWidget {
  final Result data;
  const DetailJawabanModal({
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        height: size.height * 0.7,
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                children: const <Widget>[
                  Text(
                    'Detail Data',
                    style: TextStyle(
                        fontFamily: fontNunito,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.lightBlue),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                dashPattern: const [2, 2],
                color: Colors.lightBlue,
                strokeWidth: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: <Widget>[
                    const Text(
                      '-- Detail Data Remaja --',
                      style: TextStyle(
                          fontFamily: fontNunito,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/id-card.svg",
                          height: 25,
                          color: Colors.grey,
                        ),
                        SizedBox(width: size.width * 0.02),
                        const Text(
                          'Nama Lengkap',
                          style: TextStyle(fontFamily: fontNunito),
                        ),
                        SizedBox(width: size.width * 0.03),
                        Flexible(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blueAccent,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  data.mahasiswa!.name,
                                  style: const TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/cake.svg",
                          height: 25,
                          color: Colors.grey,
                        ),
                        SizedBox(width: size.width * 0.02),
                        const Text(
                          'Umur',
                          style: TextStyle(fontFamily: fontNunito),
                        ),
                        SizedBox(width: size.width * 0.03),
                        Flexible(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blueAccent,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "${data.mahasiswa!.age} Tahun",
                                  style: const TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/study.svg",
                          height: 25,
                          color: Colors.grey,
                        ),
                        SizedBox(width: size.width * 0.02),
                        const Text(
                          'Kelas',
                          style: TextStyle(fontFamily: fontNunito),
                        ),
                        SizedBox(width: size.width * 0.03),
                        Flexible(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blueAccent,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  data.mahasiswa!.clases,
                                  style: const TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/book-number.svg",
                          height: 25,
                          color: Colors.grey,
                        ),
                        SizedBox(width: size.width * 0.02),
                        const Text(
                          'Skor',
                          style: TextStyle(fontFamily: fontNunito),
                        ),
                        SizedBox(width: size.width * 0.03),
                        Flexible(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: data.skor >= 75
                                    ? Colors.blueAccent
                                    : Colors.redAccent,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  data.skor.toString(),
                                  style: const TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/form.svg",
                          height: 25,
                          color: Colors.grey,
                        ),
                        SizedBox(width: size.width * 0.02),
                        const Text(
                          'Status',
                          style: TextStyle(fontFamily: fontNunito),
                        ),
                        SizedBox(width: size.width * 0.03),
                        Flexible(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: data.skor >= 75
                                    ? Colors.blueAccent
                                    : Colors.redAccent,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  data.skor >= 75 ? "Paham" : "Tidak Paham",
                                  style: const TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                children: const [
                  Text(
                    'Jawaban',
                    style: TextStyle(
                        fontFamily: fontNunito,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(0.0),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  int number = index + 1;
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(20),
                      dashPattern: const [2, 2],
                      color: Colors.lightBlue,
                      strokeWidth: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "$number. ${data.jawaban![index].soal!.soal}",
                              style: const TextStyle(fontFamily: fontNunito),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: data.jawaban![index].jawaban == "Salah"
                                      ? Colors.redAccent
                                      : Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  data.jawaban![index].jawaban,
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomElevatedButtonIcon(
                      label: "TUTUP",
                      icon: SvgPicture.asset(
                        "assets/icons/wrong.svg",
                        height: 25,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.red,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
