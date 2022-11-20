// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as int?,
      mahasiswa_id: json['mahasiswa_id'] as int,
      skor: json['skor'] as int,
      mahasiswa: json['mahasiswa'] == null
          ? null
          : Mahasiswa.fromJson(json['mahasiswa'] as Map<String, dynamic>),
      jawaban: (json['jawaban'] as List<dynamic>?)
          ?.map((e) => Jawaban.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'mahasiswa_id': instance.mahasiswa_id,
      'skor': instance.skor,
      'mahasiswa': instance.mahasiswa,
      'jawaban': instance.jawaban,
    };
