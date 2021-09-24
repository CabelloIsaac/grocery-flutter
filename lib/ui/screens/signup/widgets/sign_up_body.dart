import 'package:flutter/material.dart';
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
          text: "Sign In",
          onPressed: () {},
        ),
        const SizedBox(height: 24),
        AuthBottomRichText(
          onTap: () {},
          text1: "Already have an account?",
          text2: "Sign In",
        ),
      ],
    );
  }
}
