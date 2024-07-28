import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:users_list/src/common/widget/app.dart';
import 'package:users_list/src/feature/initialization/data/initialization_steps.dart';
import 'package:users_list/src/feature/initialization/widget/dependencies_scope.dart';

/// A nullable future used to ensure the app is only initialized once.
Future<void>? _$initializeApp;

/// Initializes the app and prepares it for use.
///
/// This function sets up the necessary dependencies and initializes Flutter bindings.
/// It ensures that the app is only initialized once by checking the [_$initializeApp] future.
/// If an error occurs during initialization, the provided [onError] callback is called.
Future<void> $initializeApp({
  void Function(Object error, StackTrace stackTrace)? onError,
}) =>
    _$initializeApp ??= Future<void>(() async {
      late final WidgetsBinding binding;
      try {
        // Ensure Flutter bindings are initialized and defer the first frame.
        binding = WidgetsFlutterBinding.ensureInitialized()..deferFirstFrame();

        // Initialize dependencies and log progress.
        final dependencies = await $initializeDependencies(
          onProgress: (i, m) => log('$i: $m'),
        ).timeout(const Duration(minutes: 7));

        // Run the app with the initialized dependencies.
        runApp(InheritedDependencies(
          dependencies,
          child: const App(),
        ));
      } on Object catch (error, stackTrace) {
        // Call the provided error callback if an error occurs.
        onError?.call(error, stackTrace);
        rethrow;
      } finally {
        // Allow the first frame to be rendered.
        binding.addPostFrameCallback((_) {
          binding.allowFirstFrame();
        });

        // Reset the initialization future.
        _$initializeApp = null;
      }
    });
