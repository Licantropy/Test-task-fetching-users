import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:users_list/src/feature/home/data/dto/user_dto.dart';

/// Abstract interface for user data source.
///
/// This interface defines the methods for fetching user data from a remote source.
abstract interface class UsersDataSource {
  /// Fetches the list of users.
  ///
  /// Returns a list of [UserDto] objects representing the users.
  Future<List<UserDto>> getUsers();

  /// Fetches the information of a specific user by ID.
  ///
  /// Takes an [id] parameter representing the user ID.
  /// Returns a [UserDto] object representing the user.
  Future<UserDto> getUserInfo(int id);
}

/// Implementation of [UsersDataSource] using Dio for HTTP requests.
///
/// This class provides concrete implementations for fetching user data.
final class UsersDataSourceImpl implements UsersDataSource {
  /// Instance of Dio used to perform HTTP requests.
  final Dio dio;

  /// Constructs a [UsersDataSourceImpl] with the given Dio instance.
  ///
  /// The [dio] instance is used to make HTTP requests to a remote server
  /// to fetch user data.
  UsersDataSourceImpl(this.dio);

  @override
  Future<List<UserDto>> getUsers() async {
    try {
      // Performing GET request to fetch the list of users.
      final response = await dio.get('/users');
      // Converting the response data into a list of UserDto objects.
      return UserDto.fromJsonList(response.data['data'] as List<dynamic>);
    } catch (e) {
      // Logging the error and rethrowing the exception.
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<UserDto> getUserInfo(int id) async {
    try {
      // Performing GET request to fetch user information by ID.
      final response = await dio.get('/users/$id');
      // Converting the response data into a UserDto object.
      return UserDto.fromJson(response.data['data'] as Map<String, dynamic>);
    } catch (e) {
      // Logging the error and rethrowing the exception.
      log(e.toString());
      rethrow;
    }
  }
}
