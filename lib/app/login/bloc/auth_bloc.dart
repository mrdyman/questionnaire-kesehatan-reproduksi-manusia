import 'package:bloc/bloc.dart';
import 'package:context_holder/context_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:questionnaire/app/dashboard/dashboard_screen.dart';
import 'package:questionnaire/services/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  BuildContext context = ContextHolder.currentContext;
  AuthBloc() : super(_Initial()) {
    on<_Submit>((event, emit) async {
      emit(_Loading(isLoading: true));
      User? user = await DioClient()
          .login(username: event.username, password: event.password);
      if (user != null) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', user.token);
        moveToDashboard();
      }
    });
  }

  bool validate() {
    if (!state.formKey.currentState!.validate()) {
      return false;
    }
    return true;
  }

  moveToDashboard() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const DashboardScreen(),
      ),
    );
  }
}