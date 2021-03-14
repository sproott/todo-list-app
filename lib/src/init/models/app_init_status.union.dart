import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_init_status.union.freezed.dart';

@freezed
abstract class AppInitStatus with _$AppInitStatus {
  const factory AppInitStatus.success() = _Success;
  const factory AppInitStatus.storagePermissionDenied() =
      _StoragePermissionDenied;
}
