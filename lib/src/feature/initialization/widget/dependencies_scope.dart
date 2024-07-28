import 'package:flutter/widgets.dart';
import 'package:users_list/src/common/model/dependencies.dart';
import 'package:users_list/src/common/utils/extensions/context_extension.dart';

/// InheritedWidget to provide access to dependencies throughout the widget tree.
///
/// This widget allows child widgets to access dependencies via the context.
class InheritedDependencies extends InheritedWidget {
  /// Dependencies to be provided to the widget tree.
  final Dependencies dependencies;

  /// Constructor accepting dependencies and the child widget.
  const InheritedDependencies(this.dependencies,
      {super.key, required super.child});

  /// Static method to retrieve dependencies from the context.
  static Dependencies of(BuildContext context) =>
      context.inhOf<InheritedDependencies>(listen: false).dependencies;

  @override
  bool updateShouldNotify(InheritedDependencies oldWidget) => false;
}
