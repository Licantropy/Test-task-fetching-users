// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(List<UserModel> usersList) done,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(List<UserModel> usersList)? done,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(List<UserModel> usersList)? done,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyUsersState value) empty,
    required TResult Function(_InProgressUsersState value) inProgress,
    required TResult Function(_DoneUsersState value) done,
    required TResult Function(_ErrorUsersState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUsersState value)? empty,
    TResult? Function(_InProgressUsersState value)? inProgress,
    TResult? Function(_DoneUsersState value)? done,
    TResult? Function(_ErrorUsersState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUsersState value)? empty,
    TResult Function(_InProgressUsersState value)? inProgress,
    TResult Function(_DoneUsersState value)? done,
    TResult Function(_ErrorUsersState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyUsersStateImplCopyWith<$Res> {
  factory _$$EmptyUsersStateImplCopyWith(_$EmptyUsersStateImpl value,
          $Res Function(_$EmptyUsersStateImpl) then) =
      __$$EmptyUsersStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyUsersStateImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$EmptyUsersStateImpl>
    implements _$$EmptyUsersStateImplCopyWith<$Res> {
  __$$EmptyUsersStateImplCopyWithImpl(
      _$EmptyUsersStateImpl _value, $Res Function(_$EmptyUsersStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyUsersStateImpl implements _EmptyUsersState {
  const _$EmptyUsersStateImpl();

  @override
  String toString() {
    return 'UsersState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyUsersStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(List<UserModel> usersList) done,
    required TResult Function(String? message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(List<UserModel> usersList)? done,
    TResult? Function(String? message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(List<UserModel> usersList)? done,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyUsersState value) empty,
    required TResult Function(_InProgressUsersState value) inProgress,
    required TResult Function(_DoneUsersState value) done,
    required TResult Function(_ErrorUsersState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUsersState value)? empty,
    TResult? Function(_InProgressUsersState value)? inProgress,
    TResult? Function(_DoneUsersState value)? done,
    TResult? Function(_ErrorUsersState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUsersState value)? empty,
    TResult Function(_InProgressUsersState value)? inProgress,
    TResult Function(_DoneUsersState value)? done,
    TResult Function(_ErrorUsersState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyUsersState implements UsersState {
  const factory _EmptyUsersState() = _$EmptyUsersStateImpl;
}

/// @nodoc
abstract class _$$InProgressUsersStateImplCopyWith<$Res> {
  factory _$$InProgressUsersStateImplCopyWith(_$InProgressUsersStateImpl value,
          $Res Function(_$InProgressUsersStateImpl) then) =
      __$$InProgressUsersStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressUsersStateImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$InProgressUsersStateImpl>
    implements _$$InProgressUsersStateImplCopyWith<$Res> {
  __$$InProgressUsersStateImplCopyWithImpl(_$InProgressUsersStateImpl _value,
      $Res Function(_$InProgressUsersStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProgressUsersStateImpl implements _InProgressUsersState {
  const _$InProgressUsersStateImpl();

  @override
  String toString() {
    return 'UsersState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressUsersStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(List<UserModel> usersList) done,
    required TResult Function(String? message) error,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(List<UserModel> usersList)? done,
    TResult? Function(String? message)? error,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(List<UserModel> usersList)? done,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyUsersState value) empty,
    required TResult Function(_InProgressUsersState value) inProgress,
    required TResult Function(_DoneUsersState value) done,
    required TResult Function(_ErrorUsersState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUsersState value)? empty,
    TResult? Function(_InProgressUsersState value)? inProgress,
    TResult? Function(_DoneUsersState value)? done,
    TResult? Function(_ErrorUsersState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUsersState value)? empty,
    TResult Function(_InProgressUsersState value)? inProgress,
    TResult Function(_DoneUsersState value)? done,
    TResult Function(_ErrorUsersState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressUsersState implements UsersState {
  const factory _InProgressUsersState() = _$InProgressUsersStateImpl;
}

/// @nodoc
abstract class _$$DoneUsersStateImplCopyWith<$Res> {
  factory _$$DoneUsersStateImplCopyWith(_$DoneUsersStateImpl value,
          $Res Function(_$DoneUsersStateImpl) then) =
      __$$DoneUsersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserModel> usersList});
}

/// @nodoc
class __$$DoneUsersStateImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$DoneUsersStateImpl>
    implements _$$DoneUsersStateImplCopyWith<$Res> {
  __$$DoneUsersStateImplCopyWithImpl(
      _$DoneUsersStateImpl _value, $Res Function(_$DoneUsersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersList = null,
  }) {
    return _then(_$DoneUsersStateImpl(
      usersList: null == usersList
          ? _value._usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$DoneUsersStateImpl implements _DoneUsersState {
  const _$DoneUsersStateImpl({required final List<UserModel> usersList})
      : _usersList = usersList;

  final List<UserModel> _usersList;
  @override
  List<UserModel> get usersList {
    if (_usersList is EqualUnmodifiableListView) return _usersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersList);
  }

  @override
  String toString() {
    return 'UsersState.done(usersList: $usersList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneUsersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._usersList, _usersList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_usersList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneUsersStateImplCopyWith<_$DoneUsersStateImpl> get copyWith =>
      __$$DoneUsersStateImplCopyWithImpl<_$DoneUsersStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(List<UserModel> usersList) done,
    required TResult Function(String? message) error,
  }) {
    return done(usersList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(List<UserModel> usersList)? done,
    TResult? Function(String? message)? error,
  }) {
    return done?.call(usersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(List<UserModel> usersList)? done,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(usersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyUsersState value) empty,
    required TResult Function(_InProgressUsersState value) inProgress,
    required TResult Function(_DoneUsersState value) done,
    required TResult Function(_ErrorUsersState value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUsersState value)? empty,
    TResult? Function(_InProgressUsersState value)? inProgress,
    TResult? Function(_DoneUsersState value)? done,
    TResult? Function(_ErrorUsersState value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUsersState value)? empty,
    TResult Function(_InProgressUsersState value)? inProgress,
    TResult Function(_DoneUsersState value)? done,
    TResult Function(_ErrorUsersState value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _DoneUsersState implements UsersState {
  const factory _DoneUsersState({required final List<UserModel> usersList}) =
      _$DoneUsersStateImpl;

  List<UserModel> get usersList;
  @JsonKey(ignore: true)
  _$$DoneUsersStateImplCopyWith<_$DoneUsersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorUsersStateImplCopyWith<$Res> {
  factory _$$ErrorUsersStateImplCopyWith(_$ErrorUsersStateImpl value,
          $Res Function(_$ErrorUsersStateImpl) then) =
      __$$ErrorUsersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorUsersStateImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$ErrorUsersStateImpl>
    implements _$$ErrorUsersStateImplCopyWith<$Res> {
  __$$ErrorUsersStateImplCopyWithImpl(
      _$ErrorUsersStateImpl _value, $Res Function(_$ErrorUsersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorUsersStateImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorUsersStateImpl implements _ErrorUsersState {
  const _$ErrorUsersStateImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'UsersState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorUsersStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorUsersStateImplCopyWith<_$ErrorUsersStateImpl> get copyWith =>
      __$$ErrorUsersStateImplCopyWithImpl<_$ErrorUsersStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(List<UserModel> usersList) done,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(List<UserModel> usersList)? done,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(List<UserModel> usersList)? done,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyUsersState value) empty,
    required TResult Function(_InProgressUsersState value) inProgress,
    required TResult Function(_DoneUsersState value) done,
    required TResult Function(_ErrorUsersState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUsersState value)? empty,
    TResult? Function(_InProgressUsersState value)? inProgress,
    TResult? Function(_DoneUsersState value)? done,
    TResult? Function(_ErrorUsersState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUsersState value)? empty,
    TResult Function(_InProgressUsersState value)? inProgress,
    TResult Function(_DoneUsersState value)? done,
    TResult Function(_ErrorUsersState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorUsersState implements UsersState {
  const factory _ErrorUsersState([final String? message]) =
      _$ErrorUsersStateImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ErrorUsersStateImplCopyWith<_$ErrorUsersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retrieve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieve,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveUsersEvent value) retrieve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RetrieveUsersEvent value)? retrieve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveUsersEvent value)? retrieve,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res, UsersEvent>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res, $Val extends UsersEvent>
    implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RetrieveUsersEventImplCopyWith<$Res> {
  factory _$$RetrieveUsersEventImplCopyWith(_$RetrieveUsersEventImpl value,
          $Res Function(_$RetrieveUsersEventImpl) then) =
      __$$RetrieveUsersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetrieveUsersEventImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$RetrieveUsersEventImpl>
    implements _$$RetrieveUsersEventImplCopyWith<$Res> {
  __$$RetrieveUsersEventImplCopyWithImpl(_$RetrieveUsersEventImpl _value,
      $Res Function(_$RetrieveUsersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RetrieveUsersEventImpl implements _RetrieveUsersEvent {
  const _$RetrieveUsersEventImpl();

  @override
  String toString() {
    return 'UsersEvent.retrieve()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RetrieveUsersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieve,
  }) {
    return retrieve();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retrieve,
  }) {
    return retrieve?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieve,
    required TResult orElse(),
  }) {
    if (retrieve != null) {
      return retrieve();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveUsersEvent value) retrieve,
  }) {
    return retrieve(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RetrieveUsersEvent value)? retrieve,
  }) {
    return retrieve?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveUsersEvent value)? retrieve,
    required TResult orElse(),
  }) {
    if (retrieve != null) {
      return retrieve(this);
    }
    return orElse();
  }
}

abstract class _RetrieveUsersEvent implements UsersEvent {
  const factory _RetrieveUsersEvent() = _$RetrieveUsersEventImpl;
}
