// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$User {
  @RfControl(validators: [RequiredValidator()])
  String get nickname => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String get email => throw _privateConstructorUsedError;
  @RfControl()
  String get comment => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get gender => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  DateTime get birthDate => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  bool get termsAccepted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String nickname,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String email,
      @RfControl() String comment,
      @RfControl(validators: [RequiredValidator()]) String gender,
      @RfControl(validators: [RequiredValidator()]) DateTime birthDate,
      @RfControl(validators: [RequiredValidator()]) bool termsAccepted});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? email = null,
    Object? comment = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? termsAccepted = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      termsAccepted: null == termsAccepted
          ? _value.termsAccepted
          : termsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String nickname,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String email,
      @RfControl() String comment,
      @RfControl(validators: [RequiredValidator()]) String gender,
      @RfControl(validators: [RequiredValidator()]) DateTime birthDate,
      @RfControl(validators: [RequiredValidator()]) bool termsAccepted});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? email = null,
    Object? comment = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? termsAccepted = null,
  }) {
    return _then(_$UserImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      termsAccepted: null == termsAccepted
          ? _value.termsAccepted
          : termsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserImpl implements _User {
  const _$UserImpl(
      {@RfControl(validators: [RequiredValidator()]) required this.nickname,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      required this.email,
      @RfControl() required this.comment,
      @RfControl(validators: [RequiredValidator()]) required this.gender,
      @RfControl(validators: [RequiredValidator()]) required this.birthDate,
      @RfControl(validators: [RequiredValidator()])
      required this.termsAccepted});

  @override
  @RfControl(validators: [RequiredValidator()])
  final String nickname;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  final String email;
  @override
  @RfControl()
  final String comment;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String gender;
  @override
  @RfControl(validators: [RequiredValidator()])
  final DateTime birthDate;
  @override
  @RfControl(validators: [RequiredValidator()])
  final bool termsAccepted;

  @override
  String toString() {
    return 'User(nickname: $nickname, email: $email, comment: $comment, gender: $gender, birthDate: $birthDate, termsAccepted: $termsAccepted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.termsAccepted, termsAccepted) ||
                other.termsAccepted == termsAccepted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, nickname, email, comment, gender, birthDate, termsAccepted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@RfControl(validators: [RequiredValidator()])
      required final String nickname,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      required final String email,
      @RfControl() required final String comment,
      @RfControl(validators: [RequiredValidator()])
      required final String gender,
      @RfControl(validators: [RequiredValidator()])
      required final DateTime birthDate,
      @RfControl(validators: [RequiredValidator()])
      required final bool termsAccepted}) = _$UserImpl;

  @override
  @RfControl(validators: [RequiredValidator()])
  String get nickname;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String get email;
  @override
  @RfControl()
  String get comment;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get gender;
  @override
  @RfControl(validators: [RequiredValidator()])
  DateTime get birthDate;
  @override
  @RfControl(validators: [RequiredValidator()])
  bool get termsAccepted;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
