import 'package:flutter/material.dart';

/// A widget that displays an error message with a retry button.
///
/// This widget is used to inform the user about an error and provide an option
/// to retry the failed action.
class CustomErrorWidget extends StatelessWidget {
  /// The error message to be displayed.
  final String message;

  /// Callback function to be executed when the retry button is pressed.
  final VoidCallback onTap;

  /// Constructor for [CustomErrorWidget].
  ///
  /// Requires an error [message] and an [onTap] callback for the retry button.
  const CustomErrorWidget({
    super.key,
    required this.message,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon to indicate an error.
          const Icon(
            Icons.error_outline_outlined,
            color: Colors.redAccent,
            size: 120,
          ),
          const SizedBox(height: 24),
          // Display the error message.
          Text(
            message,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          // Button to retry the action that caused the error.
          OutlinedButton(
            onPressed: onTap,
            child: const Text(
              'Retry',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
