// import 'package:flutter/material.dart';
// import 'package:reactive_form/reactive_widgets.dart';
// import 'package:reactive_forms/reactive_forms.dart';

// class ReactiveFormExample extends StatefulWidget {
//   const ReactiveFormExample({Key? key}) : super(key: key);

//   @override
//   createState() => _ReactiveFormExampleState();
// }

// class _ReactiveFormExampleState extends State<ReactiveFormExample> {
//   final _form = FormGroup({
//     'nickname': FormControl<String>(validators: [Validators.required]),
//     'email': FormControl<String>(validators: [Validators.required, Validators.email]),
//     'comment': FormControl<String>(),
//     'gender': FormControl<String>(validators: [Validators.required]),
//     'termsAccepted': FormControl<bool>(validators: [Validators.requiredTrue]),
//     'birthDate': FormControl<DateTime>(validators: [Validators.required]),
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Reactive Form Example'),
//       ),
//       body: SingleChildScrollView(
//         child: ReactiveForm(
//           formGroup: _form,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(
//               vertical: 16,
//               horizontal: 24,
//             ),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: <Widget>[
//                   AppTextInput(
//                     formControlName: 'nickname',
//                     label: 'Nickname',
//                     prefixIcon: Icons.person,
//                   ),
//                   const SizedBox(height: 4),
//                   AppTextInput(
//                     formControlName: 'email',
//                     label: 'Email',
//                     prefixIcon: Icons.email,
//                   ),
//                   const SizedBox(height: 4),
//                   AppTextInput(
//                     formControlName: 'comment',
//                     label: 'Comment',
//                     prefixIcon: Icons.textsms,
//                     minLines: 5,
//                     maxLines: 5,
//                   ),
//                   const SizedBox(height: 4),
//                   AppSelector(
//                     formControlName: 'gender',
//                     label: 'Gender',
//                     options: ['Male', 'Female', 'Other'],
//                   ),
//                   const SizedBox(height: 4),
//                   AppDateInput(
//                     formControlName: 'birthDate',
//                     label: 'Birth Date',
//                   ),
//                   const SizedBox(height: 4),
//                   AppCheckBox(
//                     formControlName: 'termsAccepted',
//                     title: 'Accept terms and conditions',
//                   ),
//                   const SizedBox(height: 4),
//                   ReactiveFormConsumer(
//                     builder: (context, form, child) {
//                       return ElevatedButton(
//                         onPressed: form.valid ? () => _onSubmit() : null,
//                         child: const Text('Submit'),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void _onSubmit() {
//     if (_form.valid) {
//       print(_form.value);
//       // Perform submit actions, e.g., sending data to a server
//     } else {
//       _form.markAllAsTouched();
//     }
//   }
// }