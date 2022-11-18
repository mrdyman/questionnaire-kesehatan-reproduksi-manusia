import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'remaja.freezed.dart';
part 'remaja.g.dart';

List<Remaja> listRemajaFromJson(String str) =>
    List<Remaja>.from(json.decode(str).map((x) => Remaja.fromJson(x)));

String listRemajaToJson(Remaja data) => json.encode(data.toJson());

@freezed
class Remaja with _$Remaja {
  const factory Remaja({
    int? id,
    required String name,
    required String age,
    required int clases,
  }) = _Remaja;

  factory Remaja.fromJson(Map<String, dynamic> json) => _$RemajaFromJson(json);
}
