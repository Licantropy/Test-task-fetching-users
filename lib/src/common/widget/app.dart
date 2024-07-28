import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:users_list/src/feature/home/widget/home_screen.dart';
import 'package:users_list/src/feature/home/widget/user_details_screen.dart';
import 'package:users_list/src/feature/home/widget/users_scope.dart';
import 'package:users_list/src/common/widget/error_scope.dart';

/// Main application widget.
///
/// This widget initializes routing and sets up the global scope for user data and error handling.
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  /// Instance of GoRouter to manage navigation.
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();

    // Initialize GoRouter with routes.
    _router = GoRouter(
      routes: [
        // Redirect root path to '/home'.
        GoRoute(
          path: '/',
          redirect: (_, __) => '/home',
        ),
        // ShellRoute to provide UsersScope to child routes.
        ShellRoute(
          builder: (context, state, child) {
            return UsersScope(child: child);
          },
          routes: [
            // Route for home screen.
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomeScreen(),
              routes: [
                // Nested route for user details screen.
                GoRoute(
                  path: 'user_details/:id',
                  builder: (context, state) {
                    // Extract user ID from the path parameters.
                    final id = int.parse(state.pathParameters['id']!);
                    return UserDetailsScreen(id: id);
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // Builder to wrap child widgets with ScaffoldMessenger and ErrorScope.
      builder: (context, child) {
        return ScaffoldMessenger(
          child: ErrorScope(
            child: child!,
          ),
        );
      },
      // Configuration for the router.
      routerConfig: _router,
    );
  }
}
