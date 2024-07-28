import 'dart:async';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:users_list/src/common/model/dependencies.dart';
import 'package:users_list/src/feature/home/data/sources/users_data_source_impl.dart';
import 'package:users_list/src/feature/home/domain/users_repository.dart';

/// Function to initialize dependencies asynchronously.
///
/// This function executes a series of steps to set up dependencies, reporting progress via a callback.
Future<Dependencies> $initializeDependencies({
  void Function(int progress, String message)? onProgress,
}) async {
  // Create a mutable instance of dependencies.
  final dependencies = $MutableDependencies();

  // Iterate over the initialization steps and execute them.
  for (final step in _initializationSteps.entries) {
    try {
      // Report progress for the current initialization step.
      onProgress?.call(
          _initializationSteps.keys.toList().indexOf(step.key), step.key);
      await step.value(dependencies);
    } on Object catch (error, stackTrace) {
      // Throw error with stack trace if initialization fails.
      Error.throwWithStackTrace(
        'Initialization failed at step "${step.key}": $error',
        stackTrace,
      );
    }
  }

  // Convert mutable dependencies to immutable ones and return.
  return dependencies.freeze();
}

/// Typedef for initialization step functions.
///
/// This typedef defines the signature for functions that perform initialization steps.
typedef _InitializationStep = FutureOr<void> Function(
  $MutableDependencies dependencies,
);

/// Map of initialization steps to be executed sequentially.
///
/// Each entry in the map represents a step in the initialization process,
/// where the key is the step name and the value is the function that performs the step.
final _initializationSteps = <String, _InitializationStep>{
  'Rest client': (dependencies) async {
    // Initialize Dio with a base URL and logging interceptor.
    final restClient = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'))
      ..interceptors.add(PrettyDioLogger());

    // Assign the Dio instance to the dependencies.
    dependencies.dio = restClient;
  },
  'UsersRepository': (dependencies) async {
    // Initialize UsersRepository with the configured Dio instance.
    dependencies.usersRepository =
        UsersRepository(UsersDataSourceImpl(dependencies.dio));
  },
};
