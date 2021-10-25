import 'package:flutter/material.dart';
import 'package:grocery/ui/screens/signin/sign_in_screen.dart';
import 'package:grocery/ui/shared/auth_bottom_rich_text.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBottomRichText(
      onTap: () {
        Navigator.pushNamed(context, SignInScreen.route);
      },
      text1: "Already have an account?",
      text2: "Sign In",
    );
  }
}
