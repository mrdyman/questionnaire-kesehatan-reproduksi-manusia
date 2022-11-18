import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'biodata.freezed.dart';
part 'biodata.g.dart';

List<Biodata> listBiodataFromJson(String str) =>
    List<Biodata>.from(json.decode(str).map((x) => Biodata.fromJson(x)));

String listBiodataToJson(Biodata data) => json.encode(data.toJson());

@freezed
class Biodata with _$Biodata {
  const factory Biodata({
    int? id,
    required String name,
    required String age,
    required int clases,
  }) = _Biodata;

  factory Biodata.fromJson(Map<String, dynamic> json) =>
      _$BiodataFromJson(json);
}
