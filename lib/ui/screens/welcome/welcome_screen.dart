import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:grocery/ui/screens/signup/sign_up_screen.dart';
import 'package:grocery/ui/shared/primary_button.dart';

import 'widgets/already_have_account_text.dart';
import 'widgets/header_image.dart';
import 'widgets/welcome_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 20),
              HeaderImage(width: width),
              const Spacer(),
              const WelcomeText(),
              const Spacer(),
              PrimaryButton(
                text: "Get Started",
                onPressed: () {
                  Navigator.pushNamed(context, SignUpScreen.route);
                },
              ),
              const SizedBox(height: 32),
              const AlreadyHaveAccountText(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
