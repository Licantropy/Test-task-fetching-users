import 'package:flutter/material.dart';
import 'package:users_list/src/common/utils/extensions/context_extension.dart';

/// Abstract class defining the interface for error handling.
///
/// Provides a method to show error messages using a Snackbar.
abstract class ErrorScopeController {
  /// Method to show an error message using a Snackbar.
  void showErrorSnackBar(String error);
}

/// Widget that provides an error handling scope.
///
/// This widget allows child widgets to show error messages using a Snackbar.
class ErrorScope extends StatefulWidget {
  /// Constructs an [ErrorScope] with the given child widget.
  ///
  /// This widget allows its child widgets to show error messages using a Snackbar.
  /// It provides a convenient way to handle and display errors globally in the app.
  ///
  /// Example usage:
  /// ```dart
  /// ErrorScope(
  ///   child: MyApp(),
  /// )
  /// ```
  /// This setup will allow any widget within `MyApp` to display error messages.
  const ErrorScope({required this.child, super.key});

  /// Child widget that will have access to the error handling scope.
  final Widget child;

  /// Static method to retrieve the [ErrorScopeController] from the context.
  ///
  /// This method allows child widgets to access the error handling functionality.
  static ErrorScopeController of(BuildContext context) =>
      context.inhOf<_InheritedErrorScope>().controller;

  @override
  State<ErrorScope> createState() => _ErrorScopeState();
}

/// State class for [ErrorScope].
///
/// Implements [ErrorScopeController] to provide error handling functionality.
class _ErrorScopeState extends State<ErrorScope>
    implements ErrorScopeController {
  @override
  Widget build(BuildContext context) =>
      _InheritedErrorScope(controller: this, child: widget.child);

  @override
  void showErrorSnackBar(String error) {
    // Display a Snackbar with the error message.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 5,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.white,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        content: Row(
          children: [
            // Icon indicating an error.
            const Icon(Icons.error_outline, color: Colors.redAccent),
            const SizedBox(width: 16),
            // Text widget to display the error message.
            Expanded(
              child: Text(
                error,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Inherited widget to pass down the [ErrorScopeController] to the widget tree.
///
/// This widget allows child widgets to access the error handling functionality.
class _InheritedErrorScope extends InheritedWidget {
  /// Controller providing error handling functionality.
  final ErrorScopeController controller;

  /// Constructs an [_InheritedErrorScope] with the given controller and child widget.
  ///
  /// This constructor initializes the inherited widget with a controller that provides
  /// error handling functionality and a child widget that can access this functionality.
  const _InheritedErrorScope({required this.controller, required super.child});

  @override
  bool updateShouldNotify(_InheritedErrorScope oldWidget) => false;
}
