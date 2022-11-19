// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jawaban.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Jawaban _$$_JawabanFromJson(Map<String, dynamic> json) => _$_Jawaban(
      id: json['id'] as int?,
      mahasiswa_id: json['mahasiswa_id'] as int,
      soal_id: json['soal_id'] as int,
      jawaban: json['jawaban'] as String,
    );

Map<String, dynamic> _$$_JawabanToJson(_$_Jawaban instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mahasiswa_id': instance.mahasiswa_id,
      'soal_id': instance.soal_id,
      'jawaban': instance.jawaban,
    };
