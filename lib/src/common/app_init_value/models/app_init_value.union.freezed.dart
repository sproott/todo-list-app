// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_init_value.union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppInitValueTearOff {
  const _$AppInitValueTearOff();

  _NotInitialized<T> notInitialized<T>() {
    return _NotInitialized<T>();
  }

  _Initialized<T> initializedWith<T>(T value) {
    return _Initialized<T>(
      value,
    );
  }
}

/// @nodoc
const $AppInitValue = _$AppInitValueTearOff();

/// @nodoc
mixin _$AppInitValue<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function(T value) initializedWith,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function(T value)? initializedWith,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotInitialized<T> value) notInitialized,
    required TResult Function(_Initialized<T> value) initializedWith,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotInitialized<T> value)? notInitialized,
    TResult Function(_Initialized<T> value)? initializedWith,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInitValueCopyWith<T, $Res> {
  factory $AppInitValueCopyWith(
          AppInitValue<T> value, $Res Function(AppInitValue<T>) then) =
      _$AppInitValueCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AppInitValueCopyWithImpl<T, $Res>
    implements $AppInitValueCopyWith<T, $Res> {
  _$AppInitValueCopyWithImpl(this._value, this._then);

  final AppInitValue<T> _value;
  // ignore: unused_field
  final $Res Function(AppInitValue<T>) _then;
}

/// @nodoc
abstract class _$NotInitializedCopyWith<T, $Res> {
  factory _$NotInitializedCopyWith(
          _NotInitialized<T> value, $Res Function(_NotInitialized<T>) then) =
      __$NotInitializedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$NotInitializedCopyWithImpl<T, $Res>
    extends _$AppInitValueCopyWithImpl<T, $Res>
    implements _$NotInitializedCopyWith<T, $Res> {
  __$NotInitializedCopyWithImpl(
      _NotInitialized<T> _value, $Res Function(_NotInitialized<T>) _then)
      : super(_value, (v) => _then(v as _NotInitialized<T>));

  @override
  _NotInitialized<T> get _value => super._value as _NotInitialized<T>;
}

/// @nodoc
class _$_NotInitialized<T>
    with DiagnosticableTreeMixin
    implements _NotInitialized<T> {
  const _$_NotInitialized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppInitValue<$T>.notInitialized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppInitValue<$T>.notInitialized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotInitialized<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function(T value) initializedWith,
  }) {
    return notInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function(T value)? initializedWith,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotInitialized<T> value) notInitialized,
    required TResult Function(_Initialized<T> value) initializedWith,
  }) {
    return notInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotInitialized<T> value)? notInitialized,
    TResult Function(_Initialized<T> value)? initializedWith,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized(this);
    }
    return orElse();
  }
}

abstract class _NotInitialized<T> implements AppInitValue<T> {
  const factory _NotInitialized() = _$_NotInitialized<T>;
}

/// @nodoc
abstract class _$InitializedCopyWith<T, $Res> {
  factory _$InitializedCopyWith(
          _Initialized<T> value, $Res Function(_Initialized<T>) then) =
      __$InitializedCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$InitializedCopyWithImpl<T, $Res>
    extends _$AppInitValueCopyWithImpl<T, $Res>
    implements _$InitializedCopyWith<T, $Res> {
  __$InitializedCopyWithImpl(
      _Initialized<T> _value, $Res Function(_Initialized<T>) _then)
      : super(_value, (v) => _then(v as _Initialized<T>));

  @override
  _Initialized<T> get _value => super._value as _Initialized<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Initialized<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
class _$_Initialized<T>
    with DiagnosticableTreeMixin
    implements _Initialized<T> {
  const _$_Initialized(this.value);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppInitValue<$T>.initializedWith(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppInitValue<$T>.initializedWith'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<T, _Initialized<T>> get copyWith =>
      __$InitializedCopyWithImpl<T, _Initialized<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function(T value) initializedWith,
  }) {
    return initializedWith(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function(T value)? initializedWith,
    required TResult orElse(),
  }) {
    if (initializedWith != null) {
      return initializedWith(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotInitialized<T> value) notInitialized,
    required TResult Function(_Initialized<T> value) initializedWith,
  }) {
    return initializedWith(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotInitialized<T> value)? notInitialized,
    TResult Function(_Initialized<T> value)? initializedWith,
    required TResult orElse(),
  }) {
    if (initializedWith != null) {
      return initializedWith(this);
    }
    return orElse();
  }
}

abstract class _Initialized<T> implements AppInitValue<T> {
  const factory _Initialized(T value) = _$_Initialized<T>;

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<T, _Initialized<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
