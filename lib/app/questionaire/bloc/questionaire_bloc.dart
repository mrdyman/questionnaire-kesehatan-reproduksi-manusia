import 'package:bloc/bloc.dart';
import 'package:context_holder/context_holder.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:questionnaire/app/result/result_screen.dart';

import '../../../models/soal.dart';
import '../../../services/dio_client.dart';
import '../../../services/handle_errors.dart';

part 'questionaire_event.dart';
part 'questionaire_state.dart';
part 'questionaire_bloc.freezed.dart';

class QuestionaireBloc extends Bloc<QuestionaireEvent, QuestionaireState> {
  BuildContext context = ContextHolder.currentContext;
  int currentSoal = 0;
  int benarCount = 0;
  int salahCount = 0;
  int totalScore = 0;
  List<Soal>? soal;
  QuestionaireBloc() : super(const _Initial()) {
    on<_GetSoal>((event, emit) async {
      emit(const _Loading());
      List<Soal>? soalData = await getSoal();
      if (soalData != null) {
        emit(_Loaded(soal: soalData));
      }
    });

    on<_NextSoal>((event, emit) async {
      emit(const _Loading());
      totalScore += event.isBenar ? 10 : 0;
      benarCount += event.isBenar ? 1 : 0;
      salahCount += !event.isBenar ? 1 : 0;
      if (soal != null && currentSoal < 9) {
        currentSoal += 1;
        await Future.delayed(const Duration(milliseconds: 850));
        emit(_Loaded(soal: soal!));
      } else {
        add(_Completed(benarCount, salahCount, totalScore));
      }
    });

    on<_Completed>((event, emit) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => ResultScreen(
                  totalBenar: event.benarCount,
                  totalSalah: event.salahCount,
                  totalScore: event.totalScore,
                )),
      );
    });
  }

  Future<List<Soal>?> getSoal() async {
    try {
      List<Soal>? response = await DioClient().getSoal();
      soal = response;
    } on DioError catch (e) {
      handleError(error: e);
    }
    return soal;
  }
}
