import 'package:flutter/material.dart';
import 'package:grocery/ui/screens/main/main_screen.dart';
import 'package:grocery/ui/screens/signin/sign_in_screen.dart';
import 'package:grocery/ui/screens/signup/sign_up_screen.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    SignInScreen.route: (BuildContext context) => const SignInScreen(),
    SignUpScreen.route: (BuildContext context) => const SignUpScreen(),
    MainScreen.route: (BuildContext context) => MainScreen(),
  };
}
