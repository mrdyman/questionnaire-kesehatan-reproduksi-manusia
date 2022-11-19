// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mahasiswa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mahasiswa _$MahasiswaFromJson(Map<String, dynamic> json) {
  return _Mahasiswa.fromJson(json);
}

/// @nodoc
mixin _$Mahasiswa {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  String get clases => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MahasiswaCopyWith<Mahasiswa> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MahasiswaCopyWith<$Res> {
  factory $MahasiswaCopyWith(Mahasiswa value, $Res Function(Mahasiswa) then) =
      _$MahasiswaCopyWithImpl<$Res, Mahasiswa>;
  @useResult
  $Res call({int? id, String name, String age, String clases});
}

/// @nodoc
class _$MahasiswaCopyWithImpl<$Res, $Val extends Mahasiswa>
    implements $MahasiswaCopyWith<$Res> {
  _$MahasiswaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? age = null,
    Object? clases = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      clases: null == clases
          ? _value.clases
          : clases // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MahasiswaCopyWith<$Res> implements $MahasiswaCopyWith<$Res> {
  factory _$$_MahasiswaCopyWith(
          _$_Mahasiswa value, $Res Function(_$_Mahasiswa) then) =
      __$$_MahasiswaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, String age, String clases});
}

/// @nodoc
class __$$_MahasiswaCopyWithImpl<$Res>
    extends _$MahasiswaCopyWithImpl<$Res, _$_Mahasiswa>
    implements _$$_MahasiswaCopyWith<$Res> {
  __$$_MahasiswaCopyWithImpl(
      _$_Mahasiswa _value, $Res Function(_$_Mahasiswa) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? age = null,
    Object? clases = null,
  }) {
    return _then(_$_Mahasiswa(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      clases: null == clases
          ? _value.clases
          : clases // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Mahasiswa implements _Mahasiswa {
  const _$_Mahasiswa(
      {this.id, required this.name, required this.age, required this.clases});

  factory _$_Mahasiswa.fromJson(Map<String, dynamic> json) =>
      _$$_MahasiswaFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String age;
  @override
  final String clases;

  @override
  String toString() {
    return 'Mahasiswa(id: $id, name: $name, age: $age, clases: $clases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Mahasiswa &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.clases, clases) || other.clases == clases));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, age, clases);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MahasiswaCopyWith<_$_Mahasiswa> get copyWith =>
      __$$_MahasiswaCopyWithImpl<_$_Mahasiswa>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MahasiswaToJson(
      this,
    );
  }
}

abstract class _Mahasiswa implements Mahasiswa {
  const factory _Mahasiswa(
      {final int? id,
      required final String name,
      required final String age,
      required final String clases}) = _$_Mahasiswa;

  factory _Mahasiswa.fromJson(Map<String, dynamic> json) =
      _$_Mahasiswa.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String get age;
  @override
  String get clases;
  @override
  @JsonKey(ignore: true)
  _$$_MahasiswaCopyWith<_$_Mahasiswa> get copyWith =>
      throw _privateConstructorUsedError;
}
