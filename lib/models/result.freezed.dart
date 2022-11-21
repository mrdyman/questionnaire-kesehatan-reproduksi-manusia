// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get mahasiswa_id => throw _privateConstructorUsedError;
  int get skor => throw _privateConstructorUsedError;
  Mahasiswa? get mahasiswa => throw _privateConstructorUsedError;
  List<Jawaban>? get jawaban => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {int? id,
      int mahasiswa_id,
      int skor,
      Mahasiswa? mahasiswa,
      List<Jawaban>? jawaban});

  $MahasiswaCopyWith<$Res>? get mahasiswa;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mahasiswa_id = null,
    Object? skor = null,
    Object? mahasiswa = freezed,
    Object? jawaban = freezed,
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
      skor: null == skor
          ? _value.skor
          : skor // ignore: cast_nullable_to_non_nullable
              as int,
      mahasiswa: freezed == mahasiswa
          ? _value.mahasiswa
          : mahasiswa // ignore: cast_nullable_to_non_nullable
              as Mahasiswa?,
      jawaban: freezed == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as List<Jawaban>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MahasiswaCopyWith<$Res>? get mahasiswa {
    if (_value.mahasiswa == null) {
      return null;
    }

    return $MahasiswaCopyWith<$Res>(_value.mahasiswa!, (value) {
      return _then(_value.copyWith(mahasiswa: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int mahasiswa_id,
      int skor,
      Mahasiswa? mahasiswa,
      List<Jawaban>? jawaban});

  @override
  $MahasiswaCopyWith<$Res>? get mahasiswa;
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mahasiswa_id = null,
    Object? skor = null,
    Object? mahasiswa = freezed,
    Object? jawaban = freezed,
  }) {
    return _then(_$_Result(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mahasiswa_id: null == mahasiswa_id
          ? _value.mahasiswa_id
          : mahasiswa_id // ignore: cast_nullable_to_non_nullable
              as int,
      skor: null == skor
          ? _value.skor
          : skor // ignore: cast_nullable_to_non_nullable
              as int,
      mahasiswa: freezed == mahasiswa
          ? _value.mahasiswa
          : mahasiswa // ignore: cast_nullable_to_non_nullable
              as Mahasiswa?,
      jawaban: freezed == jawaban
          ? _value._jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as List<Jawaban>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {this.id,
      required this.mahasiswa_id,
      required this.skor,
      this.mahasiswa,
      final List<Jawaban>? jawaban})
      : _jawaban = jawaban;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final int? id;
// ignore: non_constant_identifier_names
  @override
  final int mahasiswa_id;
  @override
  final int skor;
  @override
  final Mahasiswa? mahasiswa;
  final List<Jawaban>? _jawaban;
  @override
  List<Jawaban>? get jawaban {
    final value = _jawaban;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(id: $id, mahasiswa_id: $mahasiswa_id, skor: $skor, mahasiswa: $mahasiswa, jawaban: $jawaban)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mahasiswa_id, mahasiswa_id) ||
                other.mahasiswa_id == mahasiswa_id) &&
            (identical(other.skor, skor) || other.skor == skor) &&
            (identical(other.mahasiswa, mahasiswa) ||
                other.mahasiswa == mahasiswa) &&
            const DeepCollectionEquality().equals(other._jawaban, _jawaban));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, mahasiswa_id, skor,
      mahasiswa, const DeepCollectionEquality().hash(_jawaban));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final int? id,
      required final int mahasiswa_id,
      required final int skor,
      final Mahasiswa? mahasiswa,
      final List<Jawaban>? jawaban}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  int? get id;
  @override // ignore: non_constant_identifier_names
  int get mahasiswa_id;
  @override
  int get skor;
  @override
  Mahasiswa? get mahasiswa;
  @override
  List<Jawaban>? get jawaban;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
