import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'not_initialized_error.dart';

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
abstract class AppInitValueNotifier<T> extends StateNotifier<T?> {
  AppInitValueNotifier() : super(null);

  /// Throws [NotInitializedError] when the [state] is accessed before being initialized.
  @override
  T get state {
    if (super.state == null) {
      throw NotInitializedError('AppInitValueNotifier value not initialized.');
    } else {
      return super.state!;
    }
  }

  /// Sets the state to [value] only if it's null
  void initWith(T value) {
    super.state ??= value;
  }
}
