import 'package:flutter/material.dart';
import 'package:grocery/utils/colors.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'All your ',
        style: DefaultTextStyle.of(context).style.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
        children: const <TextSpan>[
          TextSpan(
              text: 'kitchen needs', style: TextStyle(color: MyColors.primary)),
          TextSpan(text: ' in your doorstep with cheapest price'),
        ],
      ),
    );
  }
}
