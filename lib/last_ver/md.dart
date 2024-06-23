// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

// part 'user.gform.dart';

// part 'user.freezed.dart';

// @freezed
// @Rf()
// class User with _$User {
//   // @RfControl(validators: [RequiredValidator()])
//   // String get nickname;

//   // @RfControl(validators: [RequiredValidator(), EmailValidator()])
//   // String get email;

//   // @RfControl()
//   // String get comment;

//   // @RfControl(validators: [RequiredValidator()])
//   // String get gender;

//   // @RfControl(validators: [RequiredValidator()])
//   // DateTime get birthDate;

//   // @RfControl(validators: [RequiredValidator()])
//   // bool get termsAccepted;

//   factory User({
//     @RfControl(validators: [RequiredValidator()]) String?  nickname,
//     @RfControl(validators: [RequiredValidator(), EmailValidator()]) String? email,
//     @RfControl() String? comment,
//     @RfControl(validators: [RequiredValidator()]) String? gender,
//     @RfControl(validators: [RequiredValidator()]) DateTime? birthDate,
//     @RfControl(validators: [RequiredValidator()]) bool? termsAccepted,
//   }) = _User;

//   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
// }
