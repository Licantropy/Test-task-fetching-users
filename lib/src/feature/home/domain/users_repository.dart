import 'package:flutter/foundation.dart';
import 'package:users_list/src/feature/home/data/models/user_model.dart';
import 'package:users_list/src/feature/home/data/sources/users_data_source_impl.dart';

/// Abstract interface for user repository.
///
/// This interface defines the methods for interacting with user data at a higher level.
abstract interface class IUsersRepository {
  /// Fetches the list of user models.
  ///
  /// Returns a list of [UserModel] objects representing the users.
  Future<List<UserModel>> getUsers();

  /// Fetches the information of a specific user by ID.
  ///
  /// Takes an [id] parameter representing the user ID.
  /// Returns a [UserModel] object representing the user.
  Future<UserModel> getUserInfo(int id);
}

/// Implementation of [IUsersRepository].
///
/// This class provides concrete implementations for interacting with user data.
@immutable
class UsersRepository implements IUsersRepository {
  /// Instance of [UsersDataSource] used to fetch data.
  final UsersDataSource _dataSource;

  /// Constructs a [UsersRepository] with the given data source.
  ///
  /// The [UsersRepository] uses the provided [UsersDataSource] to fetch and
  /// transform user data from DTOs (Data Transfer Objects) to domain models.
  const UsersRepository(this._dataSource);

  @override
  Future<List<UserModel>> getUsers() async {
    // Fetching the list of user DTOs from the data source.
    final dtoList = await _dataSource.getUsers();
    // Mapping the DTOs to user models and returning the list.
    return dtoList.map((dto) => UserModel.fromDto(dto)).toList();
  }

  @override
  Future<UserModel> getUserInfo(int id) async {
    // Fetching user DTO by ID from the data source.
    final dto = await _dataSource.getUserInfo(id);
    // Converting the DTO to a user model and returning it.
    return UserModel.fromDto(dto);
  }
}
