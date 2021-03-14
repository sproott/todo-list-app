import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_init_value.union.freezed.dart';

@freezed
abstract class AppInitValue<T> with _$AppInitValue {
  const factory AppInitValue.notInitialized() = _NotInitialized;
  const factory AppInitValue.initializedWith(T value) = _Initialized;
}
