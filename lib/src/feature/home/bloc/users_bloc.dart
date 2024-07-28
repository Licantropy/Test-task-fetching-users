import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:users_list/src/feature/home/data/models/user_model.dart';
import 'package:users_list/src/feature/home/domain/users_repository.dart';

part 'users_bloc.freezed.dart';

/// Freezed states for [UsersBloc].
///
/// These states represent the different states the bloc can be in.
@freezed
class UsersState with _$UsersState {
  /// Represents an empty state.
  ///
  /// This state indicates that no user data has been loaded yet or the data has been cleared.
  const factory UsersState.empty() = _EmptyUsersState;

  /// Represents a loading state.
  ///
  /// This state indicates that user data is being fetched.
  const factory UsersState.inProgress() = _InProgressUsersState;

  /// Represents a loaded state with a list of users.
  ///
  /// Contains a [usersList] parameter which is a list of [UserModel] objects representing
  /// the user data retrieved from the repository.
  const factory UsersState.done({required List<UserModel> usersList}) =
      _DoneUsersState;

  /// Represents an error state.
  ///
  /// Contains an optional [message] parameter which is a [String] describing the error that occurred.
  const factory UsersState.error([String? message]) = _ErrorUsersState;
}

/// Freezed events for [UsersBloc].
///
/// These events represent the different actions that can be dispatched to the bloc.
@freezed
class UsersEvent with _$UsersEvent {
  /// Event to fetch the list of users.
  ///
  /// This event triggers the retrieval of the list of users from the repository.
  const factory UsersEvent.retrieve() = _RetrieveUsersEvent;
}

/// Bloc for handling the list of users.
///
/// This bloc manages the state and events related to fetching and displaying the list of users.
class UsersBloc extends Bloc<UsersEvent, UsersState> {
  /// Repository for fetching user data.
  final IUsersRepository _repository;

  /// Constructs a [UsersBloc] with the given repository.
  ///
  /// The [UsersBloc] uses the provided [IUsersRepository] to fetch user data and
  /// manages the states of the list of users.
  UsersBloc({required IUsersRepository repository})
      : _repository = repository,
        super(const UsersState.empty()) {
    // Handling events
    on<UsersEvent>((event, emit) => event.map(
          retrieve: (event) => _retrieve(event, emit),
        ));
  }

  /// Method to handle fetching the list of users.
  ///
  /// This method is triggered by the [_RetrieveUsersEvent]. It sets the state to
  /// in-progress while data is being fetched, updates the state with the retrieved
  /// user data, or handles any errors that occur during the fetch process.
  Future<void> _retrieve(
      _RetrieveUsersEvent event, Emitter<UsersState> emit) async {
    emit(const UsersState.inProgress());
    try {
      // Fetching user data from repository
      final data = await _repository.getUsers();
      await Future.delayed(
          const Duration(seconds: 2)); // Simulate a delay for demonstration
      emit(UsersState.done(usersList: data));
    } catch (e) {
      emit(UsersState.error(e.toString()));
      rethrow; // Re-throwing the error after emitting the error state
    }
  }
}
