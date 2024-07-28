// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(UserModel user) done,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(UserModel user)? done,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(UserModel user)? done,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyUserDetailsState value) empty,
    required TResult Function(_InProgressUserDetailsState value) inProgress,
    required TResult Function(_DoneUserDetailsState value) done,
    required TResult Function(_ErrorUserDetailsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUserDetailsState value)? empty,
    TResult? Function(_InProgressUserDetailsState value)? inProgress,
    TResult? Function(_DoneUserDetailsState value)? done,
    TResult? Function(_ErrorUserDetailsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUserDetailsState value)? empty,
    TResult Function(_InProgressUserDetailsState value)? inProgress,
    TResult Function(_DoneUserDetailsState value)? done,
    TResult Function(_ErrorUserDetailsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsStateCopyWith(
          UserDetailsState value, $Res Function(UserDetailsState) then) =
      _$UserDetailsStateCopyWithImpl<$Res, UserDetailsState>;
}

/// @nodoc
class _$UserDetailsStateCopyWithImpl<$Res, $Val extends UserDetailsState>
    implements $UserDetailsStateCopyWith<$Res> {
  _$UserDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyUserDetailsStateImplCopyWith<$Res> {
  factory _$$EmptyUserDetailsStateImplCopyWith(
          _$EmptyUserDetailsStateImpl value,
          $Res Function(_$EmptyUserDetailsStateImpl) then) =
      __$$EmptyUserDetailsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyUserDetailsStateImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$EmptyUserDetailsStateImpl>
    implements _$$EmptyUserDetailsStateImplCopyWith<$Res> {
  __$$EmptyUserDetailsStateImplCopyWithImpl(_$EmptyUserDetailsStateImpl _value,
      $Res Function(_$EmptyUserDetailsStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyUserDetailsStateImpl implements _EmptyUserDetailsState {
  const _$EmptyUserDetailsStateImpl();

  @override
  String toString() {
    return 'UserDetailsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyUserDetailsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(UserModel user) done,
    required TResult Function(String? message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(UserModel user)? done,
    TResult? Function(String? message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(UserModel user)? done,
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
    required TResult Function(_EmptyUserDetailsState value) empty,
    required TResult Function(_InProgressUserDetailsState value) inProgress,
    required TResult Function(_DoneUserDetailsState value) done,
    required TResult Function(_ErrorUserDetailsState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUserDetailsState value)? empty,
    TResult? Function(_InProgressUserDetailsState value)? inProgress,
    TResult? Function(_DoneUserDetailsState value)? done,
    TResult? Function(_ErrorUserDetailsState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUserDetailsState value)? empty,
    TResult Function(_InProgressUserDetailsState value)? inProgress,
    TResult Function(_DoneUserDetailsState value)? done,
    TResult Function(_ErrorUserDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyUserDetailsState implements UserDetailsState {
  const factory _EmptyUserDetailsState() = _$EmptyUserDetailsStateImpl;
}

/// @nodoc
abstract class _$$InProgressUserDetailsStateImplCopyWith<$Res> {
  factory _$$InProgressUserDetailsStateImplCopyWith(
          _$InProgressUserDetailsStateImpl value,
          $Res Function(_$InProgressUserDetailsStateImpl) then) =
      __$$InProgressUserDetailsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressUserDetailsStateImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res,
        _$InProgressUserDetailsStateImpl>
    implements _$$InProgressUserDetailsStateImplCopyWith<$Res> {
  __$$InProgressUserDetailsStateImplCopyWithImpl(
      _$InProgressUserDetailsStateImpl _value,
      $Res Function(_$InProgressUserDetailsStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProgressUserDetailsStateImpl implements _InProgressUserDetailsState {
  const _$InProgressUserDetailsStateImpl();

  @override
  String toString() {
    return 'UserDetailsState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressUserDetailsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(UserModel user) done,
    required TResult Function(String? message) error,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(UserModel user)? done,
    TResult? Function(String? message)? error,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(UserModel user)? done,
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
    required TResult Function(_EmptyUserDetailsState value) empty,
    required TResult Function(_InProgressUserDetailsState value) inProgress,
    required TResult Function(_DoneUserDetailsState value) done,
    required TResult Function(_ErrorUserDetailsState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUserDetailsState value)? empty,
    TResult? Function(_InProgressUserDetailsState value)? inProgress,
    TResult? Function(_DoneUserDetailsState value)? done,
    TResult? Function(_ErrorUserDetailsState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUserDetailsState value)? empty,
    TResult Function(_InProgressUserDetailsState value)? inProgress,
    TResult Function(_DoneUserDetailsState value)? done,
    TResult Function(_ErrorUserDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressUserDetailsState implements UserDetailsState {
  const factory _InProgressUserDetailsState() =
      _$InProgressUserDetailsStateImpl;
}

/// @nodoc
abstract class _$$DoneUserDetailsStateImplCopyWith<$Res> {
  factory _$$DoneUserDetailsStateImplCopyWith(_$DoneUserDetailsStateImpl value,
          $Res Function(_$DoneUserDetailsStateImpl) then) =
      __$$DoneUserDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$DoneUserDetailsStateImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$DoneUserDetailsStateImpl>
    implements _$$DoneUserDetailsStateImplCopyWith<$Res> {
  __$$DoneUserDetailsStateImplCopyWithImpl(_$DoneUserDetailsStateImpl _value,
      $Res Function(_$DoneUserDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$DoneUserDetailsStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$DoneUserDetailsStateImpl implements _DoneUserDetailsState {
  const _$DoneUserDetailsStateImpl({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UserDetailsState.done(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneUserDetailsStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneUserDetailsStateImplCopyWith<_$DoneUserDetailsStateImpl>
      get copyWith =>
          __$$DoneUserDetailsStateImplCopyWithImpl<_$DoneUserDetailsStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(UserModel user) done,
    required TResult Function(String? message) error,
  }) {
    return done(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(UserModel user)? done,
    TResult? Function(String? message)? error,
  }) {
    return done?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(UserModel user)? done,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyUserDetailsState value) empty,
    required TResult Function(_InProgressUserDetailsState value) inProgress,
    required TResult Function(_DoneUserDetailsState value) done,
    required TResult Function(_ErrorUserDetailsState value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUserDetailsState value)? empty,
    TResult? Function(_InProgressUserDetailsState value)? inProgress,
    TResult? Function(_DoneUserDetailsState value)? done,
    TResult? Function(_ErrorUserDetailsState value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUserDetailsState value)? empty,
    TResult Function(_InProgressUserDetailsState value)? inProgress,
    TResult Function(_DoneUserDetailsState value)? done,
    TResult Function(_ErrorUserDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _DoneUserDetailsState implements UserDetailsState {
  const factory _DoneUserDetailsState({required final UserModel user}) =
      _$DoneUserDetailsStateImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$DoneUserDetailsStateImplCopyWith<_$DoneUserDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorUserDetailsStateImplCopyWith<$Res> {
  factory _$$ErrorUserDetailsStateImplCopyWith(
          _$ErrorUserDetailsStateImpl value,
          $Res Function(_$ErrorUserDetailsStateImpl) then) =
      __$$ErrorUserDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorUserDetailsStateImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$ErrorUserDetailsStateImpl>
    implements _$$ErrorUserDetailsStateImplCopyWith<$Res> {
  __$$ErrorUserDetailsStateImplCopyWithImpl(_$ErrorUserDetailsStateImpl _value,
      $Res Function(_$ErrorUserDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorUserDetailsStateImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorUserDetailsStateImpl implements _ErrorUserDetailsState {
  const _$ErrorUserDetailsStateImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'UserDetailsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorUserDetailsStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorUserDetailsStateImplCopyWith<_$ErrorUserDetailsStateImpl>
      get copyWith => __$$ErrorUserDetailsStateImplCopyWithImpl<
          _$ErrorUserDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() inProgress,
    required TResult Function(UserModel user) done,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? inProgress,
    TResult? Function(UserModel user)? done,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? inProgress,
    TResult Function(UserModel user)? done,
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
    required TResult Function(_EmptyUserDetailsState value) empty,
    required TResult Function(_InProgressUserDetailsState value) inProgress,
    required TResult Function(_DoneUserDetailsState value) done,
    required TResult Function(_ErrorUserDetailsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUserDetailsState value)? empty,
    TResult? Function(_InProgressUserDetailsState value)? inProgress,
    TResult? Function(_DoneUserDetailsState value)? done,
    TResult? Function(_ErrorUserDetailsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUserDetailsState value)? empty,
    TResult Function(_InProgressUserDetailsState value)? inProgress,
    TResult Function(_DoneUserDetailsState value)? done,
    TResult Function(_ErrorUserDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorUserDetailsState implements UserDetailsState {
  const factory _ErrorUserDetailsState([final String? message]) =
      _$ErrorUserDetailsStateImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ErrorUserDetailsStateImplCopyWith<_$ErrorUserDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getUserInfo,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getUserInfo,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getUserInfo,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserInfoEvent value) getUserInfo,
    required TResult Function(_ResetUserInfoEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserInfoEvent value)? getUserInfo,
    TResult? Function(_ResetUserInfoEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserInfoEvent value)? getUserInfo,
    TResult Function(_ResetUserInfoEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsEventCopyWith<$Res> {
  factory $UserDetailsEventCopyWith(
          UserDetailsEvent value, $Res Function(UserDetailsEvent) then) =
      _$UserDetailsEventCopyWithImpl<$Res, UserDetailsEvent>;
}

/// @nodoc
class _$UserDetailsEventCopyWithImpl<$Res, $Val extends UserDetailsEvent>
    implements $UserDetailsEventCopyWith<$Res> {
  _$UserDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserInfoEventImplCopyWith<$Res> {
  factory _$$GetUserInfoEventImplCopyWith(_$GetUserInfoEventImpl value,
          $Res Function(_$GetUserInfoEventImpl) then) =
      __$$GetUserInfoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetUserInfoEventImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$GetUserInfoEventImpl>
    implements _$$GetUserInfoEventImplCopyWith<$Res> {
  __$$GetUserInfoEventImplCopyWithImpl(_$GetUserInfoEventImpl _value,
      $Res Function(_$GetUserInfoEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetUserInfoEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetUserInfoEventImpl implements _GetUserInfoEvent {
  const _$GetUserInfoEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'UserDetailsEvent.getUserInfo(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserInfoEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserInfoEventImplCopyWith<_$GetUserInfoEventImpl> get copyWith =>
      __$$GetUserInfoEventImplCopyWithImpl<_$GetUserInfoEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getUserInfo,
    required TResult Function() reset,
  }) {
    return getUserInfo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getUserInfo,
    TResult? Function()? reset,
  }) {
    return getUserInfo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getUserInfo,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserInfoEvent value) getUserInfo,
    required TResult Function(_ResetUserInfoEvent value) reset,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserInfoEvent value)? getUserInfo,
    TResult? Function(_ResetUserInfoEvent value)? reset,
  }) {
    return getUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserInfoEvent value)? getUserInfo,
    TResult Function(_ResetUserInfoEvent value)? reset,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class _GetUserInfoEvent implements UserDetailsEvent {
  const factory _GetUserInfoEvent({required final int id}) =
      _$GetUserInfoEventImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetUserInfoEventImplCopyWith<_$GetUserInfoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetUserInfoEventImplCopyWith<$Res> {
  factory _$$ResetUserInfoEventImplCopyWith(_$ResetUserInfoEventImpl value,
          $Res Function(_$ResetUserInfoEventImpl) then) =
      __$$ResetUserInfoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetUserInfoEventImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$ResetUserInfoEventImpl>
    implements _$$ResetUserInfoEventImplCopyWith<$Res> {
  __$$ResetUserInfoEventImplCopyWithImpl(_$ResetUserInfoEventImpl _value,
      $Res Function(_$ResetUserInfoEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetUserInfoEventImpl implements _ResetUserInfoEvent {
  const _$ResetUserInfoEventImpl();

  @override
  String toString() {
    return 'UserDetailsEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetUserInfoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getUserInfo,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getUserInfo,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getUserInfo,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserInfoEvent value) getUserInfo,
    required TResult Function(_ResetUserInfoEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserInfoEvent value)? getUserInfo,
    TResult? Function(_ResetUserInfoEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserInfoEvent value)? getUserInfo,
    TResult Function(_ResetUserInfoEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetUserInfoEvent implements UserDetailsEvent {
  const factory _ResetUserInfoEvent() = _$ResetUserInfoEventImpl;
}
