import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../errors/app.error.dart';
import 'models/app_init_value.union.dart';

class _NotInitializedError extends AppError {
  _NotInitializedError() : super('AppInitValueNotifier value not initialized');
}

class _AlreadyInitializedError extends AppError {
  _AlreadyInitializedError()
      : super('Cannot overwrite already initialized AppInitValue');
}

/// Represents a `StateNotifier` which is only set once during app initialization.
///
/// Used for values that need to be computed asynchronously but are provided as synchronous.
///
/// ## Usage example: asynchronously fetched string
/// Provider for a config string fetched asynchronously from a file:
/// ```dart
/// class ConfigStringNotifier extends AppInitValueNotifier<String> {}
///
/// final configStringProvider =
///     StateNotifierProvider<ConfigStringNotifier>((_) => ConfigStringNotifier());
/// ```
///
/// Value initialization:
/// ```dart
/// context
///     .read(configStringProvider)
///     .initWith(await getConfigStringFromFile());
/// ```
///
/// Value read:
/// ```dart
/// final value = context
///     .read(configStringProvider)
///     .value;
/// ```
abstract class AppInitValueNotifier<T> extends StateNotifier<AppInitValue<T>> {
  AppInitValueNotifier() : super(AppInitValue.notInitialized());

  /// Returns the inner value.
  ///
  /// Throws [_NotInitializedError] when [value] is accessed before being initialized.
  T get value {
    return super.state.when(
        notInitialized: () => throw _NotInitializedError(),
        initializedWith: (value) => value);
  }

  /// Sets the state to [value] only if [state] is not initialized.
  ///
  /// Throws [_AlreadyInitializedError] when [state] is already initialized.
  void initWith(T value) {
    super.state.when(
        notInitialized: () => super.state = AppInitValue.initializedWith(value),
        initializedWith: (_) => throw _AlreadyInitializedError());
  }
}
