import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery/utils/colors.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = const TextStyle(color: Colors.grey);
    TextStyle linkStyle = const TextStyle(
      color: MyColors.primary,
      decoration: TextDecoration.underline,
    );
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          const TextSpan(
            text: 'Already have an account? ',
          ),
          TextSpan(
            text: 'Sign In',
            style: linkStyle,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
