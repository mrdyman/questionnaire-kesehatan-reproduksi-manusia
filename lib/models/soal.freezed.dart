// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'soal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Soal _$SoalFromJson(Map<String, dynamic> json) {
  return _Soal.fromJson(json);
}

/// @nodoc
mixin _$Soal {
  int? get id => throw _privateConstructorUsedError;
  String get soal =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get is_benar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoalCopyWith<Soal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoalCopyWith<$Res> {
  factory $SoalCopyWith(Soal value, $Res Function(Soal) then) =
      _$SoalCopyWithImpl<$Res, Soal>;
  @useResult
  $Res call({int? id, String soal, int is_benar});
}

/// @nodoc
class _$SoalCopyWithImpl<$Res, $Val extends Soal>
    implements $SoalCopyWith<$Res> {
  _$SoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? soal = null,
    Object? is_benar = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      soal: null == soal
          ? _value.soal
          : soal // ignore: cast_nullable_to_non_nullable
              as String,
      is_benar: null == is_benar
          ? _value.is_benar
          : is_benar // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SoalCopyWith<$Res> implements $SoalCopyWith<$Res> {
  factory _$$_SoalCopyWith(_$_Soal value, $Res Function(_$_Soal) then) =
      __$$_SoalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String soal, int is_benar});
}

/// @nodoc
class __$$_SoalCopyWithImpl<$Res> extends _$SoalCopyWithImpl<$Res, _$_Soal>
    implements _$$_SoalCopyWith<$Res> {
  __$$_SoalCopyWithImpl(_$_Soal _value, $Res Function(_$_Soal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? soal = null,
    Object? is_benar = null,
  }) {
    return _then(_$_Soal(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      soal: null == soal
          ? _value.soal
          : soal // ignore: cast_nullable_to_non_nullable
              as String,
      is_benar: null == is_benar
          ? _value.is_benar
          : is_benar // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Soal implements _Soal {
  const _$_Soal({this.id, required this.soal, required this.is_benar});

  factory _$_Soal.fromJson(Map<String, dynamic> json) => _$$_SoalFromJson(json);

  @override
  final int? id;
  @override
  final String soal;
// ignore: non_constant_identifier_names
  @override
  final int is_benar;

  @override
  String toString() {
    return 'Soal(id: $id, soal: $soal, is_benar: $is_benar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Soal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.soal, soal) || other.soal == soal) &&
            (identical(other.is_benar, is_benar) ||
                other.is_benar == is_benar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, soal, is_benar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SoalCopyWith<_$_Soal> get copyWith =>
      __$$_SoalCopyWithImpl<_$_Soal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SoalToJson(
      this,
    );
  }
}

abstract class _Soal implements Soal {
  const factory _Soal(
      {final int? id,
      required final String soal,
      required final int is_benar}) = _$_Soal;

  factory _Soal.fromJson(Map<String, dynamic> json) = _$_Soal.fromJson;

  @override
  int? get id;
  @override
  String get soal;
  @override // ignore: non_constant_identifier_names
  int get is_benar;
  @override
  @JsonKey(ignore: true)
  _$$_SoalCopyWith<_$_Soal> get copyWith => throw _privateConstructorUsedError;
}
