import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:questionnaire/app/login/bloc/auth_bloc.dart';
import 'package:questionnaire/components/custom_elevated_button_icon.dart';
import 'package:questionnaire/components/custom_loading_dialog.dart';
import 'package:questionnaire/components/custom_text_field.dart';
import 'package:questionnaire/config/fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
              loading: ((isLoading) => isLoading
                  ? showDialog(context: context, builder: (_) => loading())
                  : Navigator.pop(context)));
        },
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LottieBuilder.asset(
                        "assets/anims/login.json",
                        height: 250,
                      ),
                    ],
                  ),
                  const Text(
                    "Login",
                    style: TextStyle(fontFamily: fontNunito, fontSize: 28),
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
                      child: BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return Form(
                            key: bloc.state.formKey,
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomTextField(
                                  title: "Username",
                                  hintText: "username",
                                  controller: bloc.state.usernameTEC,
                                  isRequired: true,
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                      "assets/icons/form-input.svg",
                                      height: 20,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == "") {
                                      return "Username Wajib diisi!";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomTextField(
                                  title: "Password",
                                  hintText: "password",
                                  controller: bloc.state.passwordTEC,
                                  isRequired: true,
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                      "assets/icons/lock.svg",
                                      height: 20,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == "") {
                                      return "Password Wajib diisi!";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              CustomElevatedButtonIcon(
                                label: "Login",
                                icon: SvgPicture.asset(
                                  "assets/icons/login.svg",
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  if (bloc.validate()) {
                                    bloc.add(AuthEvent.submit(
                                        username: bloc.state.usernameTEC.text,
                                        password: bloc.state.passwordTEC.text));
                                  }
                                },
                              ),
                              const SizedBox(height: 10),
                              GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: const Text(
                                  "Kembali ke menu utama",
                                  style: TextStyle(
                                      color: Colors.lightBlue,
                                      decoration: TextDecoration.underline),
                                ),
                              )
                            ]),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
