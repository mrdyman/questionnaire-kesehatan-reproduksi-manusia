// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'questionaire_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionaireEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSoal,
    required TResult Function(bool isBenar) nextSoal,
    required TResult Function(int benarCount, int salahCount, int totalScore)
        completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSoal,
    TResult? Function(bool isBenar)? nextSoal,
    TResult? Function(int benarCount, int salahCount, int totalScore)?
        completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSoal,
    TResult Function(bool isBenar)? nextSoal,
    TResult Function(int benarCount, int salahCount, int totalScore)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSoal value) getSoal,
    required TResult Function(_NextSoal value) nextSoal,
    required TResult Function(_Completed value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSoal value)? getSoal,
    TResult? Function(_NextSoal value)? nextSoal,
    TResult? Function(_Completed value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSoal value)? getSoal,
    TResult Function(_NextSoal value)? nextSoal,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionaireEventCopyWith<$Res> {
  factory $QuestionaireEventCopyWith(
          QuestionaireEvent value, $Res Function(QuestionaireEvent) then) =
      _$QuestionaireEventCopyWithImpl<$Res, QuestionaireEvent>;
}

/// @nodoc
class _$QuestionaireEventCopyWithImpl<$Res, $Val extends QuestionaireEvent>
    implements $QuestionaireEventCopyWith<$Res> {
  _$QuestionaireEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetSoalCopyWith<$Res> {
  factory _$$_GetSoalCopyWith(
          _$_GetSoal value, $Res Function(_$_GetSoal) then) =
      __$$_GetSoalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetSoalCopyWithImpl<$Res>
    extends _$QuestionaireEventCopyWithImpl<$Res, _$_GetSoal>
    implements _$$_GetSoalCopyWith<$Res> {
  __$$_GetSoalCopyWithImpl(_$_GetSoal _value, $Res Function(_$_GetSoal) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetSoal implements _GetSoal {
  const _$_GetSoal();

  @override
  String toString() {
    return 'QuestionaireEvent.getSoal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetSoal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSoal,
    required TResult Function(bool isBenar) nextSoal,
    required TResult Function(int benarCount, int salahCount, int totalScore)
        completed,
  }) {
    return getSoal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSoal,
    TResult? Function(bool isBenar)? nextSoal,
    TResult? Function(int benarCount, int salahCount, int totalScore)?
        completed,
  }) {
    return getSoal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSoal,
    TResult Function(bool isBenar)? nextSoal,
    TResult Function(int benarCount, int salahCount, int totalScore)? completed,
    required TResult orElse(),
  }) {
    if (getSoal != null) {
      return getSoal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSoal value) getSoal,
    required TResult Function(_NextSoal value) nextSoal,
    required TResult Function(_Completed value) completed,
  }) {
    return getSoal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSoal value)? getSoal,
    TResult? Function(_NextSoal value)? nextSoal,
    TResult? Function(_Completed value)? completed,
  }) {
    return getSoal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSoal value)? getSoal,
    TResult Function(_NextSoal value)? nextSoal,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (getSoal != null) {
      return getSoal(this);
    }
    return orElse();
  }
}

abstract class _GetSoal implements QuestionaireEvent {
  const factory _GetSoal() = _$_GetSoal;
}

/// @nodoc
abstract class _$$_NextSoalCopyWith<$Res> {
  factory _$$_NextSoalCopyWith(
          _$_NextSoal value, $Res Function(_$_NextSoal) then) =
      __$$_NextSoalCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isBenar});
}

/// @nodoc
class __$$_NextSoalCopyWithImpl<$Res>
    extends _$QuestionaireEventCopyWithImpl<$Res, _$_NextSoal>
    implements _$$_NextSoalCopyWith<$Res> {
  __$$_NextSoalCopyWithImpl(
      _$_NextSoal _value, $Res Function(_$_NextSoal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBenar = null,
  }) {
    return _then(_$_NextSoal(
      null == isBenar
          ? _value.isBenar
          : isBenar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NextSoal implements _NextSoal {
  const _$_NextSoal(this.isBenar);

  @override
  final bool isBenar;

  @override
  String toString() {
    return 'QuestionaireEvent.nextSoal(isBenar: $isBenar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextSoal &&
            (identical(other.isBenar, isBenar) || other.isBenar == isBenar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBenar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NextSoalCopyWith<_$_NextSoal> get copyWith =>
      __$$_NextSoalCopyWithImpl<_$_NextSoal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSoal,
    required TResult Function(bool isBenar) nextSoal,
    required TResult Function(int benarCount, int salahCount, int totalScore)
        completed,
  }) {
    return nextSoal(isBenar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSoal,
    TResult? Function(bool isBenar)? nextSoal,
    TResult? Function(int benarCount, int salahCount, int totalScore)?
        completed,
  }) {
    return nextSoal?.call(isBenar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSoal,
    TResult Function(bool isBenar)? nextSoal,
    TResult Function(int benarCount, int salahCount, int totalScore)? completed,
    required TResult orElse(),
  }) {
    if (nextSoal != null) {
      return nextSoal(isBenar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSoal value) getSoal,
    required TResult Function(_NextSoal value) nextSoal,
    required TResult Function(_Completed value) completed,
  }) {
    return nextSoal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSoal value)? getSoal,
    TResult? Function(_NextSoal value)? nextSoal,
    TResult? Function(_Completed value)? completed,
  }) {
    return nextSoal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSoal value)? getSoal,
    TResult Function(_NextSoal value)? nextSoal,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (nextSoal != null) {
      return nextSoal(this);
    }
    return orElse();
  }
}

abstract class _NextSoal implements QuestionaireEvent {
  const factory _NextSoal(final bool isBenar) = _$_NextSoal;

  bool get isBenar;
  @JsonKey(ignore: true)
  _$$_NextSoalCopyWith<_$_NextSoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompletedCopyWith<$Res> {
  factory _$$_CompletedCopyWith(
          _$_Completed value, $Res Function(_$_Completed) then) =
      __$$_CompletedCopyWithImpl<$Res>;
  @useResult
  $Res call({int benarCount, int salahCount, int totalScore});
}

/// @nodoc
class __$$_CompletedCopyWithImpl<$Res>
    extends _$QuestionaireEventCopyWithImpl<$Res, _$_Completed>
    implements _$$_CompletedCopyWith<$Res> {
  __$$_CompletedCopyWithImpl(
      _$_Completed _value, $Res Function(_$_Completed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? benarCount = null,
    Object? salahCount = null,
    Object? totalScore = null,
  }) {
    return _then(_$_Completed(
      null == benarCount
          ? _value.benarCount
          : benarCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == salahCount
          ? _value.salahCount
          : salahCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed(this.benarCount, this.salahCount, this.totalScore);

  @override
  final int benarCount;
  @override
  final int salahCount;
  @override
  final int totalScore;

  @override
  String toString() {
    return 'QuestionaireEvent.completed(benarCount: $benarCount, salahCount: $salahCount, totalScore: $totalScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Completed &&
            (identical(other.benarCount, benarCount) ||
                other.benarCount == benarCount) &&
            (identical(other.salahCount, salahCount) ||
                other.salahCount == salahCount) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, benarCount, salahCount, totalScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompletedCopyWith<_$_Completed> get copyWith =>
      __$$_CompletedCopyWithImpl<_$_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSoal,
    required TResult Function(bool isBenar) nextSoal,
    required TResult Function(int benarCount, int salahCount, int totalScore)
        completed,
  }) {
    return completed(benarCount, salahCount, totalScore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSoal,
    TResult? Function(bool isBenar)? nextSoal,
    TResult? Function(int benarCount, int salahCount, int totalScore)?
        completed,
  }) {
    return completed?.call(benarCount, salahCount, totalScore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSoal,
    TResult Function(bool isBenar)? nextSoal,
    TResult Function(int benarCount, int salahCount, int totalScore)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(benarCount, salahCount, totalScore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSoal value) getSoal,
    required TResult Function(_NextSoal value) nextSoal,
    required TResult Function(_Completed value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSoal value)? getSoal,
    TResult? Function(_NextSoal value)? nextSoal,
    TResult? Function(_Completed value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSoal value)? getSoal,
    TResult Function(_NextSoal value)? nextSoal,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements QuestionaireEvent {
  const factory _Completed(
          final int benarCount, final int salahCount, final int totalScore) =
      _$_Completed;

  int get benarCount;
  int get salahCount;
  int get totalScore;
  @JsonKey(ignore: true)
  _$$_CompletedCopyWith<_$_Completed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionaireState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Soal> soal) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Soal> soal)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Soal> soal)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionaireStateCopyWith<$Res> {
  factory $QuestionaireStateCopyWith(
          QuestionaireState value, $Res Function(QuestionaireState) then) =
      _$QuestionaireStateCopyWithImpl<$Res, QuestionaireState>;
}

/// @nodoc
class _$QuestionaireStateCopyWithImpl<$Res, $Val extends QuestionaireState>
    implements $QuestionaireStateCopyWith<$Res> {
  _$QuestionaireStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$QuestionaireStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'QuestionaireState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Soal> soal) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Soal> soal)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Soal> soal)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuestionaireState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$QuestionaireStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'QuestionaireState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Soal> soal) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Soal> soal)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Soal> soal)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QuestionaireState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Soal> soal});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$QuestionaireStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soal = null,
  }) {
    return _then(_$_Loaded(
      soal: null == soal
          ? _value._soal
          : soal // ignore: cast_nullable_to_non_nullable
              as List<Soal>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required final List<Soal> soal}) : _soal = soal;

  final List<Soal> _soal;
  @override
  List<Soal> get soal {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_soal);
  }

  @override
  String toString() {
    return 'QuestionaireState.loaded(soal: $soal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._soal, _soal));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_soal));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Soal> soal) loaded,
  }) {
    return loaded(soal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Soal> soal)? loaded,
  }) {
    return loaded?.call(soal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Soal> soal)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(soal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements QuestionaireState {
  const factory _Loaded({required final List<Soal> soal}) = _$_Loaded;

  List<Soal> get soal;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
