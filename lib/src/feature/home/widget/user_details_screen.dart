import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:users_list/src/common/widget/error_widget.dart';
import 'package:users_list/src/feature/home/widget/users_scope.dart';

/// A screen that displays details of a user.
///
/// This screen fetches user details based on the user ID passed to it and shows
/// the information using various widgets. It handles different states like loading,
/// success, and error states to provide appropriate feedback to the user.
class UserDetailsScreen extends StatefulWidget {
  /// The ID of the user whose details are to be displayed.
  final int id;

  /// Constructor for [UserDetailsScreen].
  const UserDetailsScreen({super.key, required this.id});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  void initState() {
    super.initState();
    // Fetch user information after the first frame is rendered.
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => UsersScope.controllerOf(context).getUserInfo(widget.id),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
        ),
        body: UsersScope.userDetailsStateOf(context).map(
          // Show shimmer layout while data is loading
          empty: (_) => _buildShimmerLayout(),
          inProgress: (_) => _buildShimmerLayout(),
          // Show user details when data is successfully fetched
          done: (state) => Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Display user avatar using CachedNetworkImage
                  CachedNetworkImage(
                    imageUrl: state.user.avatar,
                    imageBuilder: (context, imageProvider) => CircleAvatar(
                      radius: 60,
                      backgroundImage: imageProvider,
                      backgroundColor: Colors.grey,
                    ),
                    placeholder: (context, url) => const CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Display user information
                  _buildUserInfo('Email', state.user.email),
                  _buildUserInfo('Name', state.user.firstName),
                  _buildUserInfo('Surname', state.user.lastName),
                ],
              ),
            ),
          ),
          // Show error message if fetching data fails
          error: (error) => CustomErrorWidget(
            message: "${error.message}",
            onTap: () =>
                UsersScope.controllerOf(context).getUserInfo(widget.id),
          ),
        ),
      );
}

/// Builds a shimmer layout to show while data is loading.
///
/// The shimmer effect gives a visual feedback to the user that content is
/// loading and will be displayed soon.
Widget _buildShimmerLayout() => Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(height: 24),
              ...List.generate(6, (index) => _buildShimmerContainer())
                  .expand((widget) => [widget, const SizedBox(height: 14)]),
            ],
          ),
        ),
      ),
    );

/// Builds a single shimmer container to be used in the shimmer layout.
Widget _buildShimmerContainer() {
  final double width = _randomWidth();
  return Container(
    width: width,
    height: 12,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Colors.white,
    ),
  );
}

/// Generates a random width for shimmer containers to create a varied effect.
double _randomWidth() {
  final Random random = Random();
  return 50 + random.nextInt(100).toDouble();
}

/// Builds a widget to display user information.
///
/// Takes a label and the actual info as parameters to show the user's details
/// in a structured format.
Widget _buildUserInfo(String label, String info) {
  return Column(
    children: [
      Text(label, style: const TextStyle(color: Colors.grey)),
      Text(info,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
      const SizedBox(height: 16),
    ],
  );
}
