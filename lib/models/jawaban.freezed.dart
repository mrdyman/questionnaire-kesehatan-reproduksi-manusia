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
  int? get id => throw _privateConstructorUsedError;
  int get remaja_id => throw _privateConstructorUsedError;
  int get jawaban => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JawabanCopyWith<Jawaban> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JawabanCopyWith<$Res> {
  factory $JawabanCopyWith(Jawaban value, $Res Function(Jawaban) then) =
      _$JawabanCopyWithImpl<$Res, Jawaban>;
  @useResult
  $Res call({int? id, int remaja_id, int jawaban});
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
    Object? remaja_id = null,
    Object? jawaban = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      remaja_id: null == remaja_id
          ? _value.remaja_id
          : remaja_id // ignore: cast_nullable_to_non_nullable
              as int,
      jawaban: null == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JawabanCopyWith<$Res> implements $JawabanCopyWith<$Res> {
  factory _$$_JawabanCopyWith(
          _$_Jawaban value, $Res Function(_$_Jawaban) then) =
      __$$_JawabanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int remaja_id, int jawaban});
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
    Object? remaja_id = null,
    Object? jawaban = null,
  }) {
    return _then(_$_Jawaban(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      remaja_id: null == remaja_id
          ? _value.remaja_id
          : remaja_id // ignore: cast_nullable_to_non_nullable
              as int,
      jawaban: null == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Jawaban implements _Jawaban {
  const _$_Jawaban({this.id, required this.remaja_id, required this.jawaban});

  factory _$_Jawaban.fromJson(Map<String, dynamic> json) =>
      _$$_JawabanFromJson(json);

  @override
  final int? id;
  @override
  final int remaja_id;
  @override
  final int jawaban;

  @override
  String toString() {
    return 'Jawaban(id: $id, remaja_id: $remaja_id, jawaban: $jawaban)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Jawaban &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.remaja_id, remaja_id) ||
                other.remaja_id == remaja_id) &&
            (identical(other.jawaban, jawaban) || other.jawaban == jawaban));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, remaja_id, jawaban);

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
      required final int remaja_id,
      required final int jawaban}) = _$_Jawaban;

  factory _Jawaban.fromJson(Map<String, dynamic> json) = _$_Jawaban.fromJson;

  @override
  int? get id;
  @override
  int get remaja_id;
  @override
  int get jawaban;
  @override
  @JsonKey(ignore: true)
  _$$_JawabanCopyWith<_$_Jawaban> get copyWith =>
      throw _privateConstructorUsedError;
}
