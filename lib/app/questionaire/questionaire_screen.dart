import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:questionnaire/app/questionaire/bloc/questionaire_bloc.dart';
import 'package:questionnaire/components/custom_confirmation_dialog.dart';
import 'package:questionnaire/components/custom_elevated_button_icon.dart';
import 'package:questionnaire/components/soal_loading.dart';
import 'package:questionnaire/config/fonts.dart';

class QuestionaireScreen extends StatelessWidget {
  final int mahasiswaId;
  const QuestionaireScreen({required this.mahasiswaId, super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<QuestionaireBloc>(context);
    bloc.add(const QuestionaireEvent.getSoal());
    bloc.mahasiswaId = mahasiswaId;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => showDialog(
              context: context,
              builder: (_) => CustomConfirmationDialog(
                  dialogType: 2,
                  dialogTitle: "Apakah anda yakin?",
                  dialogSubTitle:
                      "Proses belum selesai, jika kembali sebelum selesai melakukan pengisian kuesioner maka data akan dihapus!",
                  confirmTitle: "Ya, saya mengerti!",
                  onTap: () {
                    bloc.add(QuestionaireEvent.close(mahasiswaId));
                    Navigator.pop(context);
                  })),
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
          BlocBuilder<QuestionaireBloc, QuestionaireState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (soal) => Row(
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
                          child: Text(
                            soal[bloc.currentSoal].soal,
                            style: const TextStyle(
                                fontFamily: fontNunito,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                orElse: () => soalLoading(size),
              );
            },
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
                  onPressed: () => bloc.add(
                        const QuestionaireEvent.nextSoal(true),
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
                  onPressed: () =>
                      bloc.add(const QuestionaireEvent.nextSoal(false)))
            ],
          )
        ],
      ),
    );
  }
}
