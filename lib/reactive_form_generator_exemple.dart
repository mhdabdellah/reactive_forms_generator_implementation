import 'package:flutter/material.dart';
import 'package:reactive_form/reactive_widgets.dart';
import 'package:reactive_form/user.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveFormGeneratorExample extends StatefulWidget {
  const ReactiveFormGeneratorExample({Key? key}) : super(key: key);

  @override
  createState() => _ReactiveFormGeneratorExampleState();
}

class _ReactiveFormGeneratorExampleState extends State<ReactiveFormGeneratorExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive Form Generator Example'),
      ),
      body: SingleChildScrollView(
        child: UserFormBuilder(
        // setup form model with initial data
        model: User(nickname: 'Sidi', email: 'sidi@duygdush.cdjhb', comment: 'fnekjfneij', gender: 'Male', birthDate: DateTime.now(), termsAccepted: true),
        // form builder
        builder: (context, formModel, child) {
          return Column(
            children: [
              AppTextInput(
                    formControlName: 'nickname',
                    formControl:formModel.nicknameControl!,
                    label: 'Nickname',
                    prefixIcon: Icons.person,
                  ),
                  const SizedBox(height: 4),
                  AppTextInput(
                    formControlName: 'email',
                    formControl:formModel.emailControl!,
                    label: 'Email',
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(height: 4),
                  AppTextInput(
                    formControlName: 'comment',
                    formControl:formModel.commentControl!,
                    label: 'Comment',
                    prefixIcon: Icons.textsms,
                    minLines: 5,
                    maxLines: 5,
                  ),
                  const SizedBox(height: 4),
                  AppSelector(
                    formControlName: 'gender',
                    formControl:formModel.genderControl!,
                    label: 'Gender',
                    options: ['Male', 'Female', 'Other'],
                  ),
                  const SizedBox(height: 4),
                  AppDateInput(
                    formControlName: 'birthDate',
                    formControl:formModel.birthDateControl!,
                    label: 'Birth Date',
                  ),
                  const SizedBox(height: 4),
                  AppCheckBox(
                    formControlName: 'termsAccepted',
                    formControl:formModel.termsAcceptedControl!,
                    title: 'Accept terms and conditions',
                  ),
                  const SizedBox(height: 4),
                  ReactiveFormConsumer(
                    builder: (context, form, child) {
                      return ElevatedButton(
                        onPressed: form.valid ? () => _onSubmit(form) : null,
                        child: const Text('Submit'),
                      );
                    },
                  ),
            ],
          );
        },
      ),
      ),
    );
  }

  void _onSubmit(FormGroup form) {
    if (form.valid) {
      print(form.value);
      // Perform submit actions, e.g., sending data to a server
    } else {
      form.markAllAsTouched();
    }
  }
}