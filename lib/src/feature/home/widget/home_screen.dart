import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:users_list/src/common/widget/error_widget.dart';
import 'package:users_list/src/feature/home/widget/users_scope.dart';

/// HomeScreen displays a list of users fetched from a data source.
///
/// This screen shows different states: loading, data loaded, and error states.
/// It uses the UsersScope to manage user-related data and interactions.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Using UsersScope to get the current state of the users data
      body: UsersScope.usersStateOf(context).map(
        // Display a loading indicator while data is being fetched
        empty: (state) => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        // Display a placeholder layout while data is loading
        inProgress: (state) => _buildLoadingPlaceholder(context),
        // Display the list of users when data is successfully fetched
        done: (state) => ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16).add(
            EdgeInsets.only(top: MediaQuery.paddingOf(context).top),
          ),
          itemBuilder: (context, index) {
            final userId = state.usersList[index].id;
            return InkWell(
              borderRadius: BorderRadius.circular(12),
              // Navigate to the user details screen when a user item is tapped
              onTap: () =>
                  GoRouter.of(context).go('/home/user_details/$userId'),
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      // Display user avatar using CachedNetworkImage
                      CachedNetworkImage(
                        imageUrl: state.usersList[index].avatar,
                        imageBuilder: (context, imageProvider) => CircleAvatar(
                          radius: 30,
                          backgroundImage: imageProvider,
                          backgroundColor: Colors.grey,
                        ),
                        placeholder: (context, url) => const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 12),
                      // Display user's first name
                      Text(
                        state.usersList[index].firstName,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_rounded,
                          color: Colors.grey),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (c, i) => const SizedBox(height: 16),
          itemCount: state.usersList.length,
        ),
        // Display an error widget if fetching data fails
        error: (error) => CustomErrorWidget(
          message: "${error.message}",
          // Retry fetching users when the error widget is tapped
          onTap: UsersScope.controllerOf(context).getUsers,
        ),
      ),
    );
  }
}

/// Builds a loading placeholder layout using shimmer effect.
///
/// This placeholder gives visual feedback to the user that the content is
/// loading and will be displayed soon.
Widget _buildLoadingPlaceholder(BuildContext context) => ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16).add(
        EdgeInsets.only(top: MediaQuery.paddingOf(context).top),
      ),
      itemBuilder: (context, index) {
        return Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              child: Row(
                children: [
                  const CircleAvatar(radius: 30),
                  const SizedBox(width: 12),
                  Container(
                    width: 60,
                    height: 14,
                    color: Colors.red,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (c, i) => const SizedBox(height: 16),
      itemCount: 6,
    );
