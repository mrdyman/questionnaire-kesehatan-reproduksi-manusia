// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'teori_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeoriEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeoriEventCopyWith<$Res> {
  factory $TeoriEventCopyWith(
          TeoriEvent value, $Res Function(TeoriEvent) then) =
      _$TeoriEventCopyWithImpl<$Res, TeoriEvent>;
}

/// @nodoc
class _$TeoriEventCopyWithImpl<$Res, $Val extends TeoriEvent>
    implements $TeoriEventCopyWith<$Res> {
  _$TeoriEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$TeoriEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TeoriEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TeoriEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$TeoriState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String path) pdfLoaded,
    required TResult Function() isReady,
    required TResult Function() isError,
    required TResult Function() isPageError,
    required TResult Function() isPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String path)? pdfLoaded,
    TResult? Function()? isReady,
    TResult? Function()? isError,
    TResult? Function()? isPageError,
    TResult? Function()? isPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? pdfLoaded,
    TResult Function()? isReady,
    TResult Function()? isError,
    TResult Function()? isPageError,
    TResult Function()? isPageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PdfLoaded value) pdfLoaded,
    required TResult Function(_IsReady value) isReady,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsPageError value) isPageError,
    required TResult Function(_IsPageChanged value) isPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PdfLoaded value)? pdfLoaded,
    TResult? Function(_IsReady value)? isReady,
    TResult? Function(_IsError value)? isError,
    TResult? Function(_IsPageError value)? isPageError,
    TResult? Function(_IsPageChanged value)? isPageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PdfLoaded value)? pdfLoaded,
    TResult Function(_IsReady value)? isReady,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsPageError value)? isPageError,
    TResult Function(_IsPageChanged value)? isPageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeoriStateCopyWith<$Res> {
  factory $TeoriStateCopyWith(
          TeoriState value, $Res Function(TeoriState) then) =
      _$TeoriStateCopyWithImpl<$Res, TeoriState>;
}

/// @nodoc
class _$TeoriStateCopyWithImpl<$Res, $Val extends TeoriState>
    implements $TeoriStateCopyWith<$Res> {
  _$TeoriStateCopyWithImpl(this._value, this._then);

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
    extends _$TeoriStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TeoriState.initial()';
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
    required TResult Function(String path) pdfLoaded,
    required TResult Function() isReady,
    required TResult Function() isError,
    required TResult Function() isPageError,
    required TResult Function() isPageChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String path)? pdfLoaded,
    TResult? Function()? isReady,
    TResult? Function()? isError,
    TResult? Function()? isPageError,
    TResult? Function()? isPageChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? pdfLoaded,
    TResult Function()? isReady,
    TResult Function()? isError,
    TResult Function()? isPageError,
    TResult Function()? isPageChanged,
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
    required TResult Function(_PdfLoaded value) pdfLoaded,
    required TResult Function(_IsReady value) isReady,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsPageError value) isPageError,
    required TResult Function(_IsPageChanged value) isPageChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PdfLoaded value)? pdfLoaded,
    TResult? Function(_IsReady value)? isReady,
    TResult? Function(_IsError value)? isError,
    TResult? Function(_IsPageError value)? isPageError,
    TResult? Function(_IsPageChanged value)? isPageChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PdfLoaded value)? pdfLoaded,
    TResult Function(_IsReady value)? isReady,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsPageError value)? isPageError,
    TResult Function(_IsPageChanged value)? isPageChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TeoriState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_PdfLoadedCopyWith<$Res> {
  factory _$$_PdfLoadedCopyWith(
          _$_PdfLoaded value, $Res Function(_$_PdfLoaded) then) =
      __$$_PdfLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$_PdfLoadedCopyWithImpl<$Res>
    extends _$TeoriStateCopyWithImpl<$Res, _$_PdfLoaded>
    implements _$$_PdfLoadedCopyWith<$Res> {
  __$$_PdfLoadedCopyWithImpl(
      _$_PdfLoaded _value, $Res Function(_$_PdfLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$_PdfLoaded(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PdfLoaded implements _PdfLoaded {
  const _$_PdfLoaded(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'TeoriState.pdfLoaded(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PdfLoaded &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PdfLoadedCopyWith<_$_PdfLoaded> get copyWith =>
      __$$_PdfLoadedCopyWithImpl<_$_PdfLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String path) pdfLoaded,
    required TResult Function() isReady,
    required TResult Function() isError,
    required TResult Function() isPageError,
    required TResult Function() isPageChanged,
  }) {
    return pdfLoaded(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String path)? pdfLoaded,
    TResult? Function()? isReady,
    TResult? Function()? isError,
    TResult? Function()? isPageError,
    TResult? Function()? isPageChanged,
  }) {
    return pdfLoaded?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? pdfLoaded,
    TResult Function()? isReady,
    TResult Function()? isError,
    TResult Function()? isPageError,
    TResult Function()? isPageChanged,
    required TResult orElse(),
  }) {
    if (pdfLoaded != null) {
      return pdfLoaded(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PdfLoaded value) pdfLoaded,
    required TResult Function(_IsReady value) isReady,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsPageError value) isPageError,
    required TResult Function(_IsPageChanged value) isPageChanged,
  }) {
    return pdfLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PdfLoaded value)? pdfLoaded,
    TResult? Function(_IsReady value)? isReady,
    TResult? Function(_IsError value)? isError,
    TResult? Function(_IsPageError value)? isPageError,
    TResult? Function(_IsPageChanged value)? isPageChanged,
  }) {
    return pdfLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PdfLoaded value)? pdfLoaded,
    TResult Function(_IsReady value)? isReady,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsPageError value)? isPageError,
    TResult Function(_IsPageChanged value)? isPageChanged,
    required TResult orElse(),
  }) {
    if (pdfLoaded != null) {
      return pdfLoaded(this);
    }
    return orElse();
  }
}

abstract class _PdfLoaded implements TeoriState {
  const factory _PdfLoaded(final String path) = _$_PdfLoaded;

  String get path;
  @JsonKey(ignore: true)
  _$$_PdfLoadedCopyWith<_$_PdfLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsReadyCopyWith<$Res> {
  factory _$$_IsReadyCopyWith(
          _$_IsReady value, $Res Function(_$_IsReady) then) =
      __$$_IsReadyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsReadyCopyWithImpl<$Res>
    extends _$TeoriStateCopyWithImpl<$Res, _$_IsReady>
    implements _$$_IsReadyCopyWith<$Res> {
  __$$_IsReadyCopyWithImpl(_$_IsReady _value, $Res Function(_$_IsReady) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsReady implements _IsReady {
  const _$_IsReady();

  @override
  String toString() {
    return 'TeoriState.isReady()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsReady);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String path) pdfLoaded,
    required TResult Function() isReady,
    required TResult Function() isError,
    required TResult Function() isPageError,
    required TResult Function() isPageChanged,
  }) {
    return isReady();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String path)? pdfLoaded,
    TResult? Function()? isReady,
    TResult? Function()? isError,
    TResult? Function()? isPageError,
    TResult? Function()? isPageChanged,
  }) {
    return isReady?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? pdfLoaded,
    TResult Function()? isReady,
    TResult Function()? isError,
    TResult Function()? isPageError,
    TResult Function()? isPageChanged,
    required TResult orElse(),
  }) {
    if (isReady != null) {
      return isReady();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PdfLoaded value) pdfLoaded,
    required TResult Function(_IsReady value) isReady,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsPageError value) isPageError,
    required TResult Function(_IsPageChanged value) isPageChanged,
  }) {
    return isReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PdfLoaded value)? pdfLoaded,
    TResult? Function(_IsReady value)? isReady,
    TResult? Function(_IsError value)? isError,
    TResult? Function(_IsPageError value)? isPageError,
    TResult? Function(_IsPageChanged value)? isPageChanged,
  }) {
    return isReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PdfLoaded value)? pdfLoaded,
    TResult Function(_IsReady value)? isReady,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsPageError value)? isPageError,
    TResult Function(_IsPageChanged value)? isPageChanged,
    required TResult orElse(),
  }) {
    if (isReady != null) {
      return isReady(this);
    }
    return orElse();
  }
}

abstract class _IsReady implements TeoriState {
  const factory _IsReady() = _$_IsReady;
}

/// @nodoc
abstract class _$$_IsErrorCopyWith<$Res> {
  factory _$$_IsErrorCopyWith(
          _$_IsError value, $Res Function(_$_IsError) then) =
      __$$_IsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsErrorCopyWithImpl<$Res>
    extends _$TeoriStateCopyWithImpl<$Res, _$_IsError>
    implements _$$_IsErrorCopyWith<$Res> {
  __$$_IsErrorCopyWithImpl(_$_IsError _value, $Res Function(_$_IsError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsError implements _IsError {
  const _$_IsError();

  @override
  String toString() {
    return 'TeoriState.isError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String path) pdfLoaded,
    required TResult Function() isReady,
    required TResult Function() isError,
    required TResult Function() isPageError,
    required TResult Function() isPageChanged,
  }) {
    return isError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String path)? pdfLoaded,
    TResult? Function()? isReady,
    TResult? Function()? isError,
    TResult? Function()? isPageError,
    TResult? Function()? isPageChanged,
  }) {
    return isError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? pdfLoaded,
    TResult Function()? isReady,
    TResult Function()? isError,
    TResult Function()? isPageError,
    TResult Function()? isPageChanged,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PdfLoaded value) pdfLoaded,
    required TResult Function(_IsReady value) isReady,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsPageError value) isPageError,
    required TResult Function(_IsPageChanged value) isPageChanged,
  }) {
    return isError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PdfLoaded value)? pdfLoaded,
    TResult? Function(_IsReady value)? isReady,
    TResult? Function(_IsError value)? isError,
    TResult? Function(_IsPageError value)? isPageError,
    TResult? Function(_IsPageChanged value)? isPageChanged,
  }) {
    return isError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PdfLoaded value)? pdfLoaded,
    TResult Function(_IsReady value)? isReady,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsPageError value)? isPageError,
    TResult Function(_IsPageChanged value)? isPageChanged,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(this);
    }
    return orElse();
  }
}

abstract class _IsError implements TeoriState {
  const factory _IsError() = _$_IsError;
}

/// @nodoc
abstract class _$$_IsPageErrorCopyWith<$Res> {
  factory _$$_IsPageErrorCopyWith(
          _$_IsPageError value, $Res Function(_$_IsPageError) then) =
      __$$_IsPageErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsPageErrorCopyWithImpl<$Res>
    extends _$TeoriStateCopyWithImpl<$Res, _$_IsPageError>
    implements _$$_IsPageErrorCopyWith<$Res> {
  __$$_IsPageErrorCopyWithImpl(
      _$_IsPageError _value, $Res Function(_$_IsPageError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsPageError implements _IsPageError {
  const _$_IsPageError();

  @override
  String toString() {
    return 'TeoriState.isPageError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsPageError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String path) pdfLoaded,
    required TResult Function() isReady,
    required TResult Function() isError,
    required TResult Function() isPageError,
    required TResult Function() isPageChanged,
  }) {
    return isPageError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String path)? pdfLoaded,
    TResult? Function()? isReady,
    TResult? Function()? isError,
    TResult? Function()? isPageError,
    TResult? Function()? isPageChanged,
  }) {
    return isPageError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? pdfLoaded,
    TResult Function()? isReady,
    TResult Function()? isError,
    TResult Function()? isPageError,
    TResult Function()? isPageChanged,
    required TResult orElse(),
  }) {
    if (isPageError != null) {
      return isPageError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PdfLoaded value) pdfLoaded,
    required TResult Function(_IsReady value) isReady,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsPageError value) isPageError,
    required TResult Function(_IsPageChanged value) isPageChanged,
  }) {
    return isPageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PdfLoaded value)? pdfLoaded,
    TResult? Function(_IsReady value)? isReady,
    TResult? Function(_IsError value)? isError,
    TResult? Function(_IsPageError value)? isPageError,
    TResult? Function(_IsPageChanged value)? isPageChanged,
  }) {
    return isPageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PdfLoaded value)? pdfLoaded,
    TResult Function(_IsReady value)? isReady,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsPageError value)? isPageError,
    TResult Function(_IsPageChanged value)? isPageChanged,
    required TResult orElse(),
  }) {
    if (isPageError != null) {
      return isPageError(this);
    }
    return orElse();
  }
}

abstract class _IsPageError implements TeoriState {
  const factory _IsPageError() = _$_IsPageError;
}

/// @nodoc
abstract class _$$_IsPageChangedCopyWith<$Res> {
  factory _$$_IsPageChangedCopyWith(
          _$_IsPageChanged value, $Res Function(_$_IsPageChanged) then) =
      __$$_IsPageChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsPageChangedCopyWithImpl<$Res>
    extends _$TeoriStateCopyWithImpl<$Res, _$_IsPageChanged>
    implements _$$_IsPageChangedCopyWith<$Res> {
  __$$_IsPageChangedCopyWithImpl(
      _$_IsPageChanged _value, $Res Function(_$_IsPageChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsPageChanged implements _IsPageChanged {
  const _$_IsPageChanged();

  @override
  String toString() {
    return 'TeoriState.isPageChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsPageChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String path) pdfLoaded,
    required TResult Function() isReady,
    required TResult Function() isError,
    required TResult Function() isPageError,
    required TResult Function() isPageChanged,
  }) {
    return isPageChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String path)? pdfLoaded,
    TResult? Function()? isReady,
    TResult? Function()? isError,
    TResult? Function()? isPageError,
    TResult? Function()? isPageChanged,
  }) {
    return isPageChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String path)? pdfLoaded,
    TResult Function()? isReady,
    TResult Function()? isError,
    TResult Function()? isPageError,
    TResult Function()? isPageChanged,
    required TResult orElse(),
  }) {
    if (isPageChanged != null) {
      return isPageChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PdfLoaded value) pdfLoaded,
    required TResult Function(_IsReady value) isReady,
    required TResult Function(_IsError value) isError,
    required TResult Function(_IsPageError value) isPageError,
    required TResult Function(_IsPageChanged value) isPageChanged,
  }) {
    return isPageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PdfLoaded value)? pdfLoaded,
    TResult? Function(_IsReady value)? isReady,
    TResult? Function(_IsError value)? isError,
    TResult? Function(_IsPageError value)? isPageError,
    TResult? Function(_IsPageChanged value)? isPageChanged,
  }) {
    return isPageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PdfLoaded value)? pdfLoaded,
    TResult Function(_IsReady value)? isReady,
    TResult Function(_IsError value)? isError,
    TResult Function(_IsPageError value)? isPageError,
    TResult Function(_IsPageChanged value)? isPageChanged,
    required TResult orElse(),
  }) {
    if (isPageChanged != null) {
      return isPageChanged(this);
    }
    return orElse();
  }
}

abstract class _IsPageChanged implements TeoriState {
  const factory _IsPageChanged() = _$_IsPageChanged;
}
