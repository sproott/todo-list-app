// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_init_status.union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppInitStatusTearOff {
  const _$AppInitStatusTearOff();

  _Success success() {
    return const _Success();
  }

  _StoragePermissionDenied storagePermissionDenied() {
    return const _StoragePermissionDenied();
  }
}

/// @nodoc
const $AppInitStatus = _$AppInitStatusTearOff();

/// @nodoc
mixin _$AppInitStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() storagePermissionDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? storagePermissionDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_StoragePermissionDenied value)
        storagePermissionDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_StoragePermissionDenied value)? storagePermissionDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInitStatusCopyWith<$Res> {
  factory $AppInitStatusCopyWith(
          AppInitStatus value, $Res Function(AppInitStatus) then) =
      _$AppInitStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppInitStatusCopyWithImpl<$Res>
    implements $AppInitStatusCopyWith<$Res> {
  _$AppInitStatusCopyWithImpl(this._value, this._then);

  final AppInitStatus _value;
  // ignore: unused_field
  final $Res Function(AppInitStatus) _then;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$AppInitStatusCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

/// @nodoc
class _$_Success with DiagnosticableTreeMixin implements _Success {
  const _$_Success();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppInitStatus.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AppInitStatus.success'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() storagePermissionDenied,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? storagePermissionDenied,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_StoragePermissionDenied value)
        storagePermissionDenied,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_StoragePermissionDenied value)? storagePermissionDenied,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AppInitStatus {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$StoragePermissionDeniedCopyWith<$Res> {
  factory _$StoragePermissionDeniedCopyWith(_StoragePermissionDenied value,
          $Res Function(_StoragePermissionDenied) then) =
      __$StoragePermissionDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StoragePermissionDeniedCopyWithImpl<$Res>
    extends _$AppInitStatusCopyWithImpl<$Res>
    implements _$StoragePermissionDeniedCopyWith<$Res> {
  __$StoragePermissionDeniedCopyWithImpl(_StoragePermissionDenied _value,
      $Res Function(_StoragePermissionDenied) _then)
      : super(_value, (v) => _then(v as _StoragePermissionDenied));

  @override
  _StoragePermissionDenied get _value =>
      super._value as _StoragePermissionDenied;
}

/// @nodoc
class _$_StoragePermissionDenied
    with DiagnosticableTreeMixin
    implements _StoragePermissionDenied {
  const _$_StoragePermissionDenied();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppInitStatus.storagePermissionDenied()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AppInitStatus.storagePermissionDenied'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StoragePermissionDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() storagePermissionDenied,
  }) {
    return storagePermissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? storagePermissionDenied,
    required TResult orElse(),
  }) {
    if (storagePermissionDenied != null) {
      return storagePermissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_StoragePermissionDenied value)
        storagePermissionDenied,
  }) {
    return storagePermissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_StoragePermissionDenied value)? storagePermissionDenied,
    required TResult orElse(),
  }) {
    if (storagePermissionDenied != null) {
      return storagePermissionDenied(this);
    }
    return orElse();
  }
}

abstract class _StoragePermissionDenied implements AppInitStatus {
  const factory _StoragePermissionDenied() = _$_StoragePermissionDenied;
}
