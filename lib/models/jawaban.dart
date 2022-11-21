import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:questionnaire/models/soal.dart';

part 'jawaban.freezed.dart';
part 'jawaban.g.dart';

List<Jawaban> listJawabanFromJson(String str) =>
    List<Jawaban>.from(json.decode(str).map((x) => Jawaban.fromJson(x)));

String listJawabanToJson(Jawaban data) => json.encode(data.toJson());

@freezed
class Jawaban with _$Jawaban {
  const factory Jawaban({
    int? id,
    // ignore: non_constant_identifier_names
    required int mahasiswa_id,
    // ignore: non_constant_identifier_names
    required int soal_id,
    required String jawaban,
    Soal? soal,
  }) = _Jawaban;

  factory Jawaban.fromJson(Map<String, dynamic> json) =>
      _$JawabanFromJson(json);
}
