import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'user.g.dart';
part 'user.gform.dart';

@Rf()
@JsonSerializable()
class User {
  @RfControl(validators: [RequiredValidator()])
  final String nickname;

  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  final String email;

  @RfControl()
  final String comment;

  @RfControl(validators: [RequiredValidator()])
  final String gender;

  @RfControl(validators: [RequiredValidator()])
  final DateTime birthDate;

  @RfControl(validators: [RequiredValidator()])
  final bool termsAccepted;

  User({
    required this.nickname,
    required this.email,
    required this.comment,
    required this.gender,
    required this.birthDate,
    required this.termsAccepted,
  });

  factory User.fromMap(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toMap() => _$UserToJson(this);
}










// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

// part 'user.gform.dart';

// part 'user.freezed.dart';

// @Rf()
// @freezed
// class User with _$User {

//   const factory User({
//     @RfControl(validators: [RequiredValidator()]) required String  nickname,
//     @RfControl(validators: [RequiredValidator(), EmailValidator()]) required String email,
//     @RfControl() required String comment,
//     @RfControl(validators: [RequiredValidator()]) required String gender,
//     @RfControl(validators: [RequiredValidator()]) required DateTime birthDate,
//     @RfControl(validators: [RequiredValidator()]) required bool termsAccepted,
//   }) = _User;

//   // factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
//   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
// }
