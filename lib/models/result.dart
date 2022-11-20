import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:questionnaire/models/jawaban.dart';
import 'package:questionnaire/models/mahasiswa.dart';

part 'result.freezed.dart';
part 'result.g.dart';

List<Result> listResultFromJson(String str) =>
    List<Result>.from(json.decode(str).map((x) => Result.fromJson(x)));

String listResultToJson(Result data) => json.encode(data.toJson());

@freezed
class Result with _$Result {
  const factory Result({
    int? id,
    // ignore: non_constant_identifier_names
    required int mahasiswa_id,
    required int skor,
    Mahasiswa? mahasiswa,
    List<Jawaban>? jawaban,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
