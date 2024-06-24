import 'package:flutter/material.dart';
import 'package:reactive_form/reactive_form_exemple.dart';
import 'package:reactive_form/reactive_form_generator_exemple.dart';
import 'package:reactive_form/user.dart';

void main() {
  Map<String, dynamic> userData = {
    'nickname': 'mhdabdellahi',
    'email': 'mhdabdellahi0@gmail.com',
    'comment': 'This is a comment',
    'gender': 'Male',
    'birthDate': '1999-10-15T00:00:00.000',
    'termsAccepted': true,
  };

  // Create User object from map
  User user = User.fromMap(userData);

  // Use the user object as needed
  print("userData : ${user.toMap()}"); // Outputs: JohnDoe
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home:const ReactiveFormExample(),
      home:const ReactiveFormGeneratorExample(),
    );
  }
}
