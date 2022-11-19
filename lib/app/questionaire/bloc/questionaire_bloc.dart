import 'package:bloc/bloc.dart';
import 'package:context_holder/context_holder.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:questionnaire/app/result/result_screen.dart';
import 'package:questionnaire/models/jawaban.dart';

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
  late int mahasiswaId;
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
      await createJawaban(jawaban: event.isBenar ? "Benar" : "Salah");
      if (soal != null && currentSoal < 9) {
        currentSoal += 1;
        await Future.delayed(const Duration(milliseconds: 850));
        emit(_Loaded(soal: soal!));
      } else {
        bool result = await createResult();
        if (result) {
          add(_Completed(benarCount, salahCount, totalScore));
        }
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

    on<_Close>((event, emit) async {
      await deleteMahasiswa();
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

  Future<bool> createJawaban({required String jawaban}) async {
    try {
      bool response = await DioClient().createJawaban(
          jawaban: Jawaban(
              mahasiswa_id: mahasiswaId,
              soal_id: currentSoal + 1,
              jawaban: jawaban));
      return response;
    } on DioError catch (e) {
      handleError(error: e);
      return false;
    }
  }

  Future<bool> createResult() async {
    try {
      bool response = await DioClient()
          .createResult(mahasiswaId: mahasiswaId, skor: totalScore);
      return response;
    } on DioError catch (e) {
      handleError(error: e);
      return false;
    }
  }

  Future deleteMahasiswa() async {
    try {
      await DioClient().deleteMahasiswa(mahasiswaId: mahasiswaId);
    } on DioError catch (e) {
      handleError(error: e);
    }
  }
}
