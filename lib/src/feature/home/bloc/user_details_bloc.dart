import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:users_list/src/feature/home/data/models/user_model.dart';
import 'package:users_list/src/feature/home/domain/users_repository.dart';

part 'user_details_bloc.freezed.dart';

/// Freezed states for [UserDetailsBloc].
///
/// These states represent the different states the bloc can be in.
@freezed
class UserDetailsState with _$UserDetailsState {
  /// Represents an empty state.
  const factory UserDetailsState.empty() = _EmptyUserDetailsState;

  /// Represents a loading state.
  const factory UserDetailsState.inProgress() = _InProgressUserDetailsState;

  /// Represents a loaded state with user data.
  ///
  /// Contains a [user] parameter which is a [UserModel].
  const factory UserDetailsState.done({required UserModel user}) =
      _DoneUserDetailsState;

  /// Represents an error state.
  ///
  /// Contains an optional [message] parameter which is a [String].
  const factory UserDetailsState.error([String? message]) =
      _ErrorUserDetailsState;
}

/// Freezed events for [UserDetailsBloc].
///
/// These events represent the different actions that can be dispatched to the bloc.
@freezed
class UserDetailsEvent with _$UserDetailsEvent {
  /// Event to fetch user information by ID.
  ///
  /// Contains an [id] parameter representing the user ID.
  const factory UserDetailsEvent.getUserInfo({required int id}) =
      _GetUserInfoEvent;

  /// Event to reset user information state.
  const factory UserDetailsEvent.reset() = _ResetUserInfoEvent;
}

/// Bloc for handling user details.
///
/// This bloc handles events related to fetching and managing user details.
class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  /// Repository for fetching user data.
  final IUsersRepository _repository;

  /// Cache for storing user data.
  final Map<int, UserModel> _userCache = {};

  /// Constructs a [UserDetailsBloc] with the given repository.
  ///
  /// The [UserDetailsBloc] is responsible for handling events that fetch
  /// and manage user details. It uses an [IUsersRepository] to retrieve data.
  UserDetailsBloc({required IUsersRepository repository})
      : _repository = repository,
        super(const UserDetailsState.empty()) {
    // Handling events
    on<UserDetailsEvent>((event, emit) => event.map(
          getUserInfo: (event) => _getUserInfo(event, emit),
          reset: (event) => _resetUserInfo(emit),
        ));
  }

  /// Method to handle fetching user info.
  ///
  /// Takes an event and emit parameters to manage state transitions.
  /// This method checks if the user data is already cached. If cached,
  /// it emits the cached data. Otherwise, it fetches data from the repository,
  /// caches it, and emits the loaded state.
  Future<void> _getUserInfo(
      _GetUserInfoEvent event, Emitter<UserDetailsState> emit) async {
    emit(const UserDetailsState.inProgress());
    try {
      // Check if user data is already cached
      if (_userCache.containsKey(event.id)) {
        emit(UserDetailsState.done(user: _userCache[event.id]!));
      } else {
        // Fetch user data from repository and cache it
        final data = await _repository.getUserInfo(event.id);
        _userCache[event.id] = data;
        await Future.delayed(const Duration(seconds: 2)); // Simulate a delay
        emit(UserDetailsState.done(user: data));
      }
    } catch (e) {
      emit(UserDetailsState.error(e.toString()));
    }
  }

  /// Method to reset user info state.
  ///
  /// Emits an empty state.
  void _resetUserInfo(Emitter<UserDetailsState> emit) {
    emit(const UserDetailsState.empty());
  }
}
