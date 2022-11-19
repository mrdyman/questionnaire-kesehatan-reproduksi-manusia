import 'package:bloc/bloc.dart';
import 'package:context_holder/context_holder.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:questionnaire/app/questionaire/questionaire_screen.dart';
import 'package:questionnaire/services/dio_client.dart';
import 'package:questionnaire/services/handle_errors.dart';

import '../../../models/mahasiswa.dart';
import '../../dashboard/dashboard_screen.dart';

part 'biodata_event.dart';
part 'biodata_state.dart';
part 'biodata_bloc.freezed.dart';

class BiodataBloc extends Bloc<BiodataEvent, BiodataState> {
  BuildContext context = ContextHolder.currentContext;
  BiodataBloc() : super(_Initial()) {
    on<BiodataEvent>((event, emit) {
      //
    });

    on<_Submit>((event, emit) async {
      emit(_Loading(isLoading: true));
      bool biodata = await createBiodata(
          name: event.name, age: event.age, clases: event.clases);
      emit(_Loading());
      if (biodata) {
        add(const _MoveToQuestionaire());
      }
    });

    on<_MoveToQuestionaire>((event, emit) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const QuestionaireScreen()),
      );
    });
  }

  bool validate() {
    if (!state.formKey.currentState!.validate()) {
      return false;
    }
    return true;
  }

  Future<bool> createBiodata({
    required String name,
    required String age,
    required String clases,
  }) async {
    try {
      bool response = await DioClient().createMahasiswa(
          mahasiswa: Mahasiswa(
        name: name,
        age: age,
        clases: clases,
      ));
      return response;
    } on DioError catch (e) {
      handleError(error: e);
      return false;
    }
  }
}
