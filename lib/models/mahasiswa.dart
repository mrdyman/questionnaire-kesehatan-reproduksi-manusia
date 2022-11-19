import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'mahasiswa.freezed.dart';
part 'mahasiswa.g.dart';

List<Mahasiswa> listMahasiswaFromJson(String str) =>
    List<Mahasiswa>.from(json.decode(str).map((x) => Mahasiswa.fromJson(x)));

String listMahasiswaToJson(List<Mahasiswa> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Mahasiswa with _$Mahasiswa {
  const factory Mahasiswa({
    int? id,
    required String name,
    required int age,
    required String clases,
  }) = _Mahasiswa;

  factory Mahasiswa.fromJson(Map<String, dynamic> json) =>
      _$MahasiswaFromJson(json);
}
