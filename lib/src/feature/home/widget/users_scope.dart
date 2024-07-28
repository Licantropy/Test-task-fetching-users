import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:users_list/src/common/utils/extensions/context_extension.dart';
import 'package:users_list/src/common/widget/error_scope.dart';
import 'package:users_list/src/feature/home/bloc/users_bloc.dart';
import 'package:users_list/src/feature/home/bloc/user_details_bloc.dart';
import 'package:users_list/src/feature/initialization/widget/dependencies_scope.dart';

/// Interface for UsersScope controller.
///
/// Defines methods for fetching user data.
abstract interface class UsersScopeController {
  /// Method to fetch the list of users.
  void getUsers();

  /// Method to fetch user information by ID.
  void getUserInfo(int id);
}

/// Stateful widget to provide scope for users-related data and operations.
///
/// This widget is designed to encapsulate and manage the state and operations
/// related to user data. It sets up the necessary BLoCs (Business Logic Components)
/// for handling user data and provides methods to interact with these BLoCs.
///
/// The [UsersScope] widget ensures that the user data is readily available to its
/// child widgets and facilitates fetching user information as needed. It is
/// typically used at a high level in the widget tree to provide user data to
/// multiple descendant widgets.
class UsersScope extends StatefulWidget {
  /// Constructs a [UsersScope] with the given child widget.
  ///
  /// This widget is designed to encapsulate and manage the state and operations
  /// related to user data. It sets up the necessary BLoCs (Business Logic Components)
  /// for handling user data and provides methods to interact with these BLoCs.
  ///
  /// The [UsersScope] widget ensures that the user data is readily available to its
  /// child widgets and facilitates fetching user information as needed. It is
  /// typically used at a high level in the widget tree to provide user data to
  /// multiple descendant widgets.
  ///
  /// Example usage:
  /// ```dart
  /// UsersScope(
  ///   child: MyApp(),
  /// )
  /// ```
  /// This setup will provide user data and operations to all widgets within `MyApp`.
  const UsersScope({super.key, required this.child});

  /// Child widget that will have access to the user data and operations.
  final Widget child;

  /// Static method to get controller from context.
  static UsersScopeController controllerOf(BuildContext context) => context
      .inheritFrom<_UsersScopeAspect, _InheritedUsersScope>(
        aspect: _UsersScopeAspect.controller,
      )
      .controller;

  /// Static method to get users state from context.
  static UsersState usersStateOf(BuildContext context) => context
      .inheritFrom<_UsersScopeAspect, _InheritedUsersScope>(
        aspect: _UsersScopeAspect.users,
      )
      .usersState;

  /// Static method to get user details state from context.
  static UserDetailsState userDetailsStateOf(BuildContext context) => context
      .inheritFrom<_UsersScopeAspect, _InheritedUsersScope>(
        aspect: _UsersScopeAspect.userDetails,
      )
      .userDetailsState;

  @override
  State<UsersScope> createState() => _UsersScopeState();
}

/// State class for [UsersScope].
///
/// This class manages the state and logic for UsersScope.
class _UsersScopeState extends State<UsersScope>
    implements UsersScopeController {
  late final UsersBloc _usersBloc;
  late final UserDetailsBloc _userDetailsBloc;

  @override
  void initState() {
    super.initState();
    // Initialize UsersBloc with repository from context.
    _usersBloc = UsersBloc(
      repository: InheritedDependencies.of(context).usersRepository,
    )..add(const UsersEvent.retrieve());

    // Initialize UserDetailsBloc with repository from context.
    _userDetailsBloc = UserDetailsBloc(
      repository: InheritedDependencies.of(context).usersRepository,
    );

    // Listen to UsersBloc state changes.
    _usersBloc.stream.listen((state) {
      state.maybeMap(
        error: (errorState) => ErrorScope.of(context)
            .showErrorSnackBar(errorState.message ?? 'Unknown error'),
        orElse: () {},
      );
    });

    // Listen to UserDetailsBloc state changes.
    _userDetailsBloc.stream.listen((state) {
      state.maybeMap(
        error: (errorState) => ErrorScope.of(context)
            .showErrorSnackBar(errorState.message ?? 'Unknown error'),
        orElse: () {},
      );
    });
  }

  @override
  void dispose() {
    // Close the blocs when the widget is disposed.
    _usersBloc.close();
    _userDetailsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build the widget tree using BlocBuilders to react to state changes.
    return BlocBuilder<UsersBloc, UsersState>(
      bloc: _usersBloc,
      builder: (context, usersState) {
        return BlocBuilder<UserDetailsBloc, UserDetailsState>(
          bloc: _userDetailsBloc,
          builder: (context, userDetailsState) {
            return _InheritedUsersScope(
              controller: this,
              usersState: usersState,
              userDetailsState: userDetailsState,
              child: widget.child,
            );
          },
        );
      },
    );
  }

  @override
  void getUsers() {
    // Add retrieve event to UsersBloc to fetch users.
    _usersBloc.add(const UsersEvent.retrieve());
  }

  @override
  void getUserInfo(int id) {
    // Reset and then add getUserInfo event to UserDetailsBloc to fetch user info by ID.
    _userDetailsBloc.add(const UserDetailsEvent.reset());
    _userDetailsBloc.add(UserDetailsEvent.getUserInfo(id: id));
  }
}

/// Enum for specifying aspects of [_UsersScopeAspect].
///
/// These aspects are used to manage dependency updates in [_InheritedUsersScope].
enum _UsersScopeAspect { controller, users, userDetails }

/// Inherited widget for providing UsersScope context.
///
/// This widget manages the dependencies and state updates for UsersScope.
class _InheritedUsersScope extends InheritedModel<_UsersScopeAspect> {
  /// Controller for UsersScope.
  final UsersScopeController controller;

  /// State representing the list of users.
  final UsersState usersState;

  /// State representing the user details.
  final UserDetailsState userDetailsState;

  /// Constructs an [_InheritedUsersScope] with the given parameters.
  const _InheritedUsersScope({
    required this.controller,
    required this.usersState,
    required this.userDetailsState,
    required super.child,
  });

  @override
  bool updateShouldNotify(_InheritedUsersScope oldWidget) =>
      usersState != oldWidget.usersState ||
      userDetailsState != oldWidget.userDetailsState;

  @override
  bool updateShouldNotifyDependent(
    _InheritedUsersScope oldWidget,
    Set<_UsersScopeAspect> dependencies,
  ) {
    var shouldNotify = false;

    if (dependencies.contains(_UsersScopeAspect.users)) {
      shouldNotify = shouldNotify || usersState != oldWidget.usersState;
    }

    if (dependencies.contains(_UsersScopeAspect.userDetails)) {
      shouldNotify =
          shouldNotify || userDetailsState != oldWidget.userDetailsState;
    }

    if (dependencies.contains(_UsersScopeAspect.controller)) {
      shouldNotify = shouldNotify || controller != oldWidget.controller;
    }

    return shouldNotify;
  }
}
