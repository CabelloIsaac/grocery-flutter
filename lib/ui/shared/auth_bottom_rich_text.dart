import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery/utils/colors.dart';

class AuthBottomRichText extends StatelessWidget {
  const AuthBottomRichText({
    Key? key,
    required this.text1,
    required this.text2,
    required this.onTap,
    this.isCentered = true,
  }) : super(key: key);

  final String text1;
  final String text2;
  final Function() onTap;
  final bool isCentered;

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = const TextStyle(color: Colors.grey);
    TextStyle linkStyle = const TextStyle(
      color: MyColors.primary,
      decoration: TextDecoration.underline,
    );
    return SizedBox(
      width: isCentered ? double.infinity : null,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: defaultStyle,
          children: <TextSpan>[
            TextSpan(
              text: '$text1 ',
            ),
            TextSpan(
              text: text2,
              style: linkStyle,
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
