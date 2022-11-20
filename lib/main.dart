import 'package:context_holder/context_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:questionnaire/app/dashboard/dashboard_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/welcome/welcome_screen.dart';

void main() async {
  await dotenv.load(fileName: ".env");
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
      home: const Router(),
    );
  }
}

class Router extends StatefulWidget {
  const Router({super.key});

  @override
  State<Router> createState() => _RouterState();
}

class _RouterState extends State<Router> {
  isLogin() async {
    final prefs = await SharedPreferences.getInstance();
    bool session = prefs.getString('token') == null ? false : true;
    moveToScreen(session);
  }

  moveToScreen(isLoggedIn) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
            isLoggedIn ? const DashboardScreen() : const WelcomeScreen(),
      ),
    );
  }

  @override
  void initState() {
    isLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoadingAnimationWidget.twistingDots(
            leftDotColor: Colors.green, rightDotColor: Colors.purple, size: 45),
      ),
    );
  }
}
