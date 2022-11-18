// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'biodata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Biodata _$BiodataFromJson(Map<String, dynamic> json) {
  return _Biodata.fromJson(json);
}

/// @nodoc
mixin _$Biodata {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  int get clases => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BiodataCopyWith<Biodata> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiodataCopyWith<$Res> {
  factory $BiodataCopyWith(Biodata value, $Res Function(Biodata) then) =
      _$BiodataCopyWithImpl<$Res, Biodata>;
  @useResult
  $Res call({int? id, String name, String age, int clases});
}

/// @nodoc
class _$BiodataCopyWithImpl<$Res, $Val extends Biodata>
    implements $BiodataCopyWith<$Res> {
  _$BiodataCopyWithImpl(this._value, this._then);

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
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BiodataCopyWith<$Res> implements $BiodataCopyWith<$Res> {
  factory _$$_BiodataCopyWith(
          _$_Biodata value, $Res Function(_$_Biodata) then) =
      __$$_BiodataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, String age, int clases});
}

/// @nodoc
class __$$_BiodataCopyWithImpl<$Res>
    extends _$BiodataCopyWithImpl<$Res, _$_Biodata>
    implements _$$_BiodataCopyWith<$Res> {
  __$$_BiodataCopyWithImpl(_$_Biodata _value, $Res Function(_$_Biodata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? age = null,
    Object? clases = null,
  }) {
    return _then(_$_Biodata(
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
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Biodata implements _Biodata {
  const _$_Biodata(
      {this.id, required this.name, required this.age, required this.clases});

  factory _$_Biodata.fromJson(Map<String, dynamic> json) =>
      _$$_BiodataFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String age;
  @override
  final int clases;

  @override
  String toString() {
    return 'Biodata(id: $id, name: $name, age: $age, clases: $clases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Biodata &&
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
  _$$_BiodataCopyWith<_$_Biodata> get copyWith =>
      __$$_BiodataCopyWithImpl<_$_Biodata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BiodataToJson(
      this,
    );
  }
}

abstract class _Biodata implements Biodata {
  const factory _Biodata(
      {final int? id,
      required final String name,
      required final String age,
      required final int clases}) = _$_Biodata;

  factory _Biodata.fromJson(Map<String, dynamic> json) = _$_Biodata.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String get age;
  @override
  int get clases;
  @override
  @JsonKey(ignore: true)
  _$$_BiodataCopyWith<_$_Biodata> get copyWith =>
      throw _privateConstructorUsedError;
}
