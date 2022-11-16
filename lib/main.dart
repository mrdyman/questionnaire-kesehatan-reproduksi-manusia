import 'package:flutter/material.dart';
import 'package:questionnaire/const/colors.dart';
import 'package:questionnaire/presentation/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        backgroundColor: backgroundScaffold,
        body: WelcomeScreen(),
      ),
    );
  }
}
