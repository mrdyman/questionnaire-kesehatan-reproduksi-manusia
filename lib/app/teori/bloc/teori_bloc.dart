import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

part 'teori_event.dart';
part 'teori_state.dart';
part 'teori_bloc.freezed.dart';

class TeoriBloc extends Bloc<TeoriEvent, TeoriState> {
  TeoriBloc() : super(_Initial()) {
    on<_Started>((event, emit) async {
      File file = await fromAsset('assets/doc/teori.pdf', 'teori.pdf');
      emit(TeoriState.pdfLoaded(file.path));
    });
  }

  Future<File> fromAsset(String asset, String filename) async {
    // To open from assets, you can copy them to the app storage folder, and the access them "locally"
    Completer<File> completer = Completer();

    try {
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/$filename");
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }

    return completer.future;
  }
}
