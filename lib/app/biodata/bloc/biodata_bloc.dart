import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

part 'biodata_event.dart';
part 'biodata_state.dart';
part 'biodata_bloc.freezed.dart';

class BiodataBloc extends Bloc<BiodataEvent, BiodataState> {
  BiodataBloc() : super(_Initial()) {
    on<BiodataEvent>((event, emit) {
      //
    });

    on<_Submit>((event, emit) async {
      emit(_Loading(isLoading: true));
      await createBiodata();
      emit(_Loading());
    });
  }

  bool validate() {
    if (!state.formKey.currentState!.validate()) {
      return false;
    }
    return true;
  }

  Future createBiodata() async {
    log('create biodata');
    await Future.delayed(const Duration(seconds: 5));
    log('biodata created.');
  }
}
