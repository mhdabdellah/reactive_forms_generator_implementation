import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'user.gform.dart';

part 'user.freezed.dart';

@freezed
@Rf()
class User with _$User {

  const factory User({
    @RfControl(validators: [RequiredValidator()]) required String  nickname,
    @RfControl(validators: [RequiredValidator(), EmailValidator()]) required String email,
    @RfControl() required String comment,
    @RfControl(validators: [RequiredValidator()]) required String gender,
    @RfControl(validators: [RequiredValidator()]) required DateTime birthDate,
    @RfControl(validators: [RequiredValidator()]) required bool termsAccepted,
  }) = _User;
  
}
