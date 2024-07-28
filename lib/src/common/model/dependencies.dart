import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:users_list/src/feature/home/domain/users_repository.dart';

/// Abstract interface for managing dependencies.
///
/// This interface defines a contract for accessing the [UsersRepository].
abstract interface class Dependencies {
  /// Abstract property for accessing [UsersRepository].
  abstract final UsersRepository usersRepository;
}

/// Implementation of mutable dependencies.
///
/// This class allows modification of dependencies during the initialization phase.
/// It is useful for setting up dependencies that need to be configured or updated
/// before the application is fully initialized.
final class $MutableDependencies implements Dependencies {
  /// Constructor initializing an empty context map.
  $MutableDependencies() : context = {};

  /// Map to store various dependency objects.
  final Map<Object, Object?> context;

  @override
  late final UsersRepository usersRepository;

  /// Dio instance used for making HTTP requests.
  late final Dio dio;

  /// Method to convert mutable dependencies to immutable ones.
  ///
  /// This method is called after all dependencies have been configured and
  /// are ready to be used in a read-only manner. It returns an immutable
  /// version of the dependencies to ensure that they cannot be modified.
  Dependencies freeze() => $ImmutableDependencies(
        usersRepository: usersRepository,
      );
}

/// Immutable implementation of dependencies.
///
/// This class provides a read-only view of the dependencies once they are set.
/// It ensures that the dependencies cannot be modified after initialization,
/// providing a stable and predictable environment for the application.
@immutable
final class $ImmutableDependencies implements Dependencies {
  /// Constructor requiring all dependencies to be provided.
  ///
  /// This constructor initializes the immutable dependencies with the
  /// necessary components. All required dependencies must be passed in.
  const $ImmutableDependencies({
    required this.usersRepository,
  });

  @override
  final UsersRepository usersRepository;
}
