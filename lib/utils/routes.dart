import 'package:flutter/material.dart';
import 'package:grocery/ui/screens/signup/sign_up_screen.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    SignUpScreen.route: (BuildContext context) => const SignUpScreen(),
  };
}
