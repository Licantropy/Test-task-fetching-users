import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:users_list/src/feature/home/data/dto/user_dto.dart';

part 'user_model.freezed.dart';

/// Model class for User.
///
/// This class represents the user data within the application. It uses the
/// `freezed` package to generate immutable classes and provides methods to
/// convert from DTO objects.
@freezed
class UserModel with _$UserModel {
  /// Factory constructor to create a [UserModel].
  ///
  /// The `freezed` package generates the implementation for this constructor.
  const factory UserModel({
    required int id,
    required String email,
    required String firstName,
    required String lastName,
    required String avatar,
  }) = _UserModel;

  /// Factory method to create a [UserModel] from a [UserDto].
  ///
  /// This method is used to convert data transfer objects received from the API
  /// into model objects used within the application.
  factory UserModel.fromDto(UserDto dto) => UserModel(
        id: dto.id,
        email: dto.email,
        firstName: dto.firstName,
        lastName: dto.lastName,
        avatar: dto.avatar,
      );
}
