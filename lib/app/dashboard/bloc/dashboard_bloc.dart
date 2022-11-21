import 'package:bloc/bloc.dart';
import 'package:context_holder/context_holder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:questionnaire/app/welcome/welcome_screen.dart';
import 'package:questionnaire/components/custom_info_dialog.dart';
import 'package:questionnaire/models/result.dart';
import 'package:questionnaire/services/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  BuildContext context = ContextHolder.currentContext;

  int totalPaham = 0;
  int totalTidakPaham = 0;
  int totalData = 0;

  DashboardBloc() : super(_Initial()) {
    on<_Started>((event, emit) async {
      emit(DashboardState.initial());
      List<Result>? data = await DioClient().getResult();
      if (data != null) {
        totalPaham = data.where((element) => element.skor >= 75).length;
        totalTidakPaham = data.where((element) => element.skor < 75).length;
        totalData = data.where((element) => element.jawaban != null).length;
      }
      String userLogin = await getUserLogin();
      emit(DashboardState.loaded(dataResult: data, userLogin: userLogin));
    });

    on<_DeleteData>((event, emit) async {
      emit(_Loading(isLoading: true));
      bool response = await DioClient().deleteResult(id: event.id);
      if (response) {
        showDialog(
            context: context,
            builder: (_) => const CustomInfoDialog(
                  dialogTitle: "Berhasil!",
                  dialogType: 1,
                  dialogSubTitle: 'Data Berhasil dihapus!',
                  confirmTitle: 'OKE',
                ));
        add(const DashboardEvent.started());
      } else {
        showDialog(
            context: context,
            builder: (_) => const CustomInfoDialog(
                  dialogTitle: "Gagal!",
                  dialogType: 3,
                  dialogSubTitle: 'Data Gagal dihapus!',
                  confirmTitle: 'OKE',
                ));
      }
      emit(_Loading());
    });

    on<_Logout>((event, emit) {
      logout();
      moveToWelcome();
    });
  }

  logout() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('username');
    prefs.remove('token');
  }

  Future<String> getUserLogin() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('username')!;
  }

  moveToWelcome() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        ));
  }
}
