import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jawaban.freezed.dart';
part 'jawaban.g.dart';

List<Jawaban> listJawabanFromJson(String str) =>
    List<Jawaban>.from(json.decode(str).map((x) => Jawaban.fromJson(x)));

String listJawabanToJson(Jawaban data) => json.encode(data.toJson());

@freezed
class Jawaban with _$Jawaban {
  const factory Jawaban({
    int? id,
    required int remaja_id,
    required int jawaban,
  }) = _Jawaban;

  factory Jawaban.fromJson(Map<String, dynamic> json) =>
      _$JawabanFromJson(json);
}
