import 'package:flutter/material.dart';
import 'package:grocery/ui/screens/signin/sign_in_screen.dart';
import 'package:grocery/ui/shared/auth_bottom_rich_text.dart';
import 'package:grocery/ui/shared/auth_header_title.dart';
import 'package:grocery/ui/shared/primary_button.dart';

import 'sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
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
          title: "Register to SuperMarket",
          subtitle: "Fill this form to create an account",
        ),
        const SizedBox(height: 32),
        const SignUpForm(),
        const SizedBox(height: 24),
        PrimaryButton(
          text: "Next",
          onPressed: () {},
        ),
        const SizedBox(height: 24),
        AuthBottomRichText(
          onTap: () {
            Navigator.pushReplacementNamed(context, SignInScreen.route);
          },
          text1: "Already have an account?",
          text2: "Sign In",
        ),
      ],
    );
  }
}
