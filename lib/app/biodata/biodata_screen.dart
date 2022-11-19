import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:questionnaire/components/custom_elevated_button_icon.dart';
import 'package:questionnaire/components/custom_loading_dialog.dart';
import 'package:questionnaire/components/custom_text_field.dart';
import 'package:questionnaire/config/colors.dart';

import '../../components/custom_confirmation_dialog.dart';
import 'bloc/biodata_bloc.dart';

class BiodataScreen extends StatelessWidget {
  const BiodataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BiodataBloc>(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundScaffold,
      appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0),
      body: BlocListener<BiodataBloc, BiodataState>(
        listener: (context, state) {
          state.whenOrNull(
              loading: (isLoading) => isLoading
                  ? showDialog(context: context, builder: (_) => loading())
                  : Navigator.pop(context));
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: LottieBuilder.asset(
                  "assets/anims/biodata.json",
                  height: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
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
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(20),
                      dashPattern: const [3, 3],
                      color: Colors.blue,
                      strokeWidth: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: BlocBuilder<BiodataBloc, BiodataState>(
                          builder: (context, state) {
                            return Form(
                              key: bloc.state.formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomTextField(
                                    title: "Nama Lengkap",
                                    hintText: "Cth. Nanda ......",
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    isRequired: true,
                                    controller: bloc.state.nameTEC,
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: SvgPicture.asset(
                                        "assets/icons/form-input.svg",
                                        height: 20,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == "") {
                                        return "Nama Wajib diisi!";
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: size.height * 0.03),
                                  CustomTextField(
                                    title: "Umur",
                                    hintText: "Cth. 22 ......",
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    maxLength: 2,
                                    inputFormatters: [
                                      bloc.state.ageMaskFormatter
                                    ],
                                    isRequired: true,
                                    controller: bloc.state.ageTEC,
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: SvgPicture.asset(
                                        "assets/icons/cake.svg",
                                        height: 20,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == "") {
                                        return "Umur Wajib diisi!";
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: size.height * 0.03),
                                  CustomTextField(
                                    title: "Kelas",
                                    hintText: "Cth. A",
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    isRequired: true,
                                    controller: bloc.state.clasesTEC,
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: SvgPicture.asset(
                                        "assets/icons/text.svg",
                                        height: 20,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == "") {
                                        return "Kelas Wajib diisi!";
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: size.height * 0.03),
                                  CustomElevatedButtonIcon(
                                      backgroundColor: Colors.green,
                                      label: "Mulai Quesioner",
                                      icon: SvgPicture.asset(
                                        "assets/icons/rocket.svg",
                                        color: Colors.white,
                                        height: 20,
                                      ),
                                      onPressed: () {
                                        if (bloc.validate()) {
                                          showDialog(
                                            context: context,
                                            builder: (_) =>
                                                CustomConfirmationDialog(
                                              confirmTitle: "Ya, Saya Mengerti",
                                              dialogSubTitle:
                                                  "** Masukkan identitas diri anda dengan benar dan baca dengan baik setiap pernyataan yang tersedia kemudian pilih jawaban Benar / Salah pada setiap pernyataan. **",
                                              onTap: () {
                                                bloc.add(BiodataEvent.submit(
                                                    bloc.state.nameTEC.text,
                                                    int.parse(
                                                        bloc.state.ageTEC.text),
                                                    bloc.state.clasesTEC.text));
                                              },
                                            ),
                                          );
                                        }
                                      })
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
