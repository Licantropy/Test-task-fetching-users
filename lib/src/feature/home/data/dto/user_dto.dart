import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

/// Data Transfer Object (DTO) for User.
///
/// This class is used to map JSON data to Dart objects and vice versa.
/// It uses the `freezed` package to generate immutable classes and the `json_serializable`
/// package to handle JSON serialization and deserialization.
@freezed
class UserDto with _$UserDto {
  /// Factory constructor to create a [UserDto].
  ///
  /// The `freezed` package generates the implementation for this constructor.
  const factory UserDto({
    required int id,
    required String email,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String avatar,
  }) = _UserDto;

  /// Factory constructor to create a [UserDto] from a JSON map.
  ///
  /// This method is used to deserialize JSON data into a [UserDto] object.
  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  /// Static method to convert a list of JSON maps to a list of [UserDto] objects.
  ///
  /// This method is useful when handling API responses that return a list of users.
  static List<UserDto> fromJsonList(List<dynamic> jsonList) => jsonList
      .map<UserDto>(
          (jsonItem) => UserDto.fromJson(jsonItem as Map<String, dynamic>))
      .toList();
}
