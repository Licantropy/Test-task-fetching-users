import 'dart:async';
import 'dart:developer';

import 'package:users_list/src/feature/initialization/data/initialization.dart';

/// Main entry point of the application.
///
/// This function initializes the application and sets up global error handling.
void main() => runZonedGuarded(
      // Initialize the application within a guarded zone.
      () => $initializeApp(
        // Callback for handling initialization errors.
        onError: (error, stackTrace) {
          // Log initialization errors with their stack traces.
          log('ERROR: $error\nStackTrace: $stackTrace');
        },
      ),
      // Global error handler for uncaught errors.
      (error, stackTrace) {
        // Log uncaught errors with their stack traces.
        log(
          error.toString(),
          stackTrace: stackTrace,
        );
      },
    );
