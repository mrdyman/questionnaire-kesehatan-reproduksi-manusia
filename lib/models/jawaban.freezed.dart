// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'jawaban.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Jawaban _$JawabanFromJson(Map<String, dynamic> json) {
  return _Jawaban.fromJson(json);
}

/// @nodoc
mixin _$Jawaban {
  int? get id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get mahasiswa_id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get soal_id => throw _privateConstructorUsedError;
  String get jawaban => throw _privateConstructorUsedError;
  Soal? get soal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JawabanCopyWith<Jawaban> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JawabanCopyWith<$Res> {
  factory $JawabanCopyWith(Jawaban value, $Res Function(Jawaban) then) =
      _$JawabanCopyWithImpl<$Res, Jawaban>;
  @useResult
  $Res call(
      {int? id, int mahasiswa_id, int soal_id, String jawaban, Soal? soal});

  $SoalCopyWith<$Res>? get soal;
}

/// @nodoc
class _$JawabanCopyWithImpl<$Res, $Val extends Jawaban>
    implements $JawabanCopyWith<$Res> {
  _$JawabanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mahasiswa_id = null,
    Object? soal_id = null,
    Object? jawaban = null,
    Object? soal = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mahasiswa_id: null == mahasiswa_id
          ? _value.mahasiswa_id
          : mahasiswa_id // ignore: cast_nullable_to_non_nullable
              as int,
      soal_id: null == soal_id
          ? _value.soal_id
          : soal_id // ignore: cast_nullable_to_non_nullable
              as int,
      jawaban: null == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as String,
      soal: freezed == soal
          ? _value.soal
          : soal // ignore: cast_nullable_to_non_nullable
              as Soal?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SoalCopyWith<$Res>? get soal {
    if (_value.soal == null) {
      return null;
    }

    return $SoalCopyWith<$Res>(_value.soal!, (value) {
      return _then(_value.copyWith(soal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JawabanCopyWith<$Res> implements $JawabanCopyWith<$Res> {
  factory _$$_JawabanCopyWith(
          _$_Jawaban value, $Res Function(_$_Jawaban) then) =
      __$$_JawabanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, int mahasiswa_id, int soal_id, String jawaban, Soal? soal});

  @override
  $SoalCopyWith<$Res>? get soal;
}

/// @nodoc
class __$$_JawabanCopyWithImpl<$Res>
    extends _$JawabanCopyWithImpl<$Res, _$_Jawaban>
    implements _$$_JawabanCopyWith<$Res> {
  __$$_JawabanCopyWithImpl(_$_Jawaban _value, $Res Function(_$_Jawaban) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mahasiswa_id = null,
    Object? soal_id = null,
    Object? jawaban = null,
    Object? soal = freezed,
  }) {
    return _then(_$_Jawaban(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mahasiswa_id: null == mahasiswa_id
          ? _value.mahasiswa_id
          : mahasiswa_id // ignore: cast_nullable_to_non_nullable
              as int,
      soal_id: null == soal_id
          ? _value.soal_id
          : soal_id // ignore: cast_nullable_to_non_nullable
              as int,
      jawaban: null == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as String,
      soal: freezed == soal
          ? _value.soal
          : soal // ignore: cast_nullable_to_non_nullable
              as Soal?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Jawaban implements _Jawaban {
  const _$_Jawaban(
      {this.id,
      required this.mahasiswa_id,
      required this.soal_id,
      required this.jawaban,
      this.soal});

  factory _$_Jawaban.fromJson(Map<String, dynamic> json) =>
      _$$_JawabanFromJson(json);

  @override
  final int? id;
// ignore: non_constant_identifier_names
  @override
  final int mahasiswa_id;
// ignore: non_constant_identifier_names
  @override
  final int soal_id;
  @override
  final String jawaban;
  @override
  final Soal? soal;

  @override
  String toString() {
    return 'Jawaban(id: $id, mahasiswa_id: $mahasiswa_id, soal_id: $soal_id, jawaban: $jawaban, soal: $soal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Jawaban &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mahasiswa_id, mahasiswa_id) ||
                other.mahasiswa_id == mahasiswa_id) &&
            (identical(other.soal_id, soal_id) || other.soal_id == soal_id) &&
            (identical(other.jawaban, jawaban) || other.jawaban == jawaban) &&
            (identical(other.soal, soal) || other.soal == soal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, mahasiswa_id, soal_id, jawaban, soal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JawabanCopyWith<_$_Jawaban> get copyWith =>
      __$$_JawabanCopyWithImpl<_$_Jawaban>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JawabanToJson(
      this,
    );
  }
}

abstract class _Jawaban implements Jawaban {
  const factory _Jawaban(
      {final int? id,
      required final int mahasiswa_id,
      required final int soal_id,
      required final String jawaban,
      final Soal? soal}) = _$_Jawaban;

  factory _Jawaban.fromJson(Map<String, dynamic> json) = _$_Jawaban.fromJson;

  @override
  int? get id;
  @override // ignore: non_constant_identifier_names
  int get mahasiswa_id;
  @override // ignore: non_constant_identifier_names
  int get soal_id;
  @override
  String get jawaban;
  @override
  Soal? get soal;
  @override
  @JsonKey(ignore: true)
  _$$_JawabanCopyWith<_$_Jawaban> get copyWith =>
      throw _privateConstructorUsedError;
}
