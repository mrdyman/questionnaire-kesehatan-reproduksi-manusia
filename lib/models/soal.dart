import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'soal.freezed.dart';
part 'soal.g.dart';

List<Soal> listSoalFromJson(String str) =>
    List<Soal>.from(json.decode(str).map((x) => Soal.fromJson(x)));

String listSoalToJson(Soal data) => json.encode(data.toJson());

@freezed
class Soal with _$Soal {
  const factory Soal({
    int? id,
    required String soal,
    required int isBenar,
  }) = _Soal;

  factory Soal.fromJson(Map<String, dynamic> json) => _$SoalFromJson(json);
}
