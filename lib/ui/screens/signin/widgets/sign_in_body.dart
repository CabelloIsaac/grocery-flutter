import 'package:flutter/material.dart';
import 'package:grocery/ui/screens/signup/sign_up_screen.dart';
import 'package:grocery/ui/shared/auth_bottom_rich_text.dart';
import 'package:grocery/ui/shared/auth_header_title.dart';
import 'package:grocery/ui/shared/primary_button.dart';

import 'sign_in_form.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: [
        const AuthHeaderTitle(
          title: "Sign in to SuperMarket",
          subtitle:
              "Welcome back! Sign in with your previous account to continue shopping",
        ),
        const SizedBox(height: 32),
        const SignInForm(),
        const SizedBox(height: 24),
        PrimaryButton(
          text: "Sign In",
          onPressed: () {},
        ),
        const SizedBox(height: 24),
        AuthBottomRichText(
          onTap: () {
            Navigator.pushReplacementNamed(context, SignUpScreen.route);
          },
          text1: "Don't have an account?",
          text2: "Register",
        ),
      ],
    );
  }
}
