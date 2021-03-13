import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'not_initialized_error.dart';

/// Represents a `StateNotifier` which is only set once during app initialization.
///
/// Used for values that need to be computed asynchronously but are provided as synchronous.
///
/// ## Usage example: asynchronously fetched string
/// Provider for a config string fetched asynchronously from a file:
/// ```dart
/// class ConfigStringNotifier extends AppInitValueNotifier<String> {
///   ConfigStringNotifier() : super('ConfigStringNotifier');
/// }
///
/// final configStringProvider =
///     StateNotifierProvider<ConfigStringNotifier>((_) => ConfigStringNotifier());
/// ```
abstract class AppInitValueNotifier<T> extends StateNotifier<T?> {
  AppInitValueNotifier(this._notifierName) : super(null);

  /// The name of this notifier for error messages.
  final String _notifierName;

  /// Throws [NotInitializedError] when the [state] gets accessed before being initialized.
  @override
  T get state {
    if (super.state == null) {
      throw NotInitializedError('$_notifierName not initialized.');
    } else {
      return super.state!;
    }
  }

  /// Sets the state to [value] only if it's null
  void initWith(T value) {
    super.state ??= value;
  }
}
