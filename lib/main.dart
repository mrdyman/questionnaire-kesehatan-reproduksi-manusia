import 'package:context_holder/context_holder.dart';
import 'package:flutter/material.dart';
import 'package:questionnaire/config/colors.dart';

import 'app/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: ContextHolder.key,
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
