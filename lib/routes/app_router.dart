import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:questionnaire/app/welcome/welcome_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: WelcomeScreen, initial: true),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
