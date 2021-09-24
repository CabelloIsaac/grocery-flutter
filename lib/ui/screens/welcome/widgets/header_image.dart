import 'package:flutter/material.dart';
import 'package:grocery/utils/colors.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: MyColors.primary,
              borderRadius: BorderRadius.circular(15),
            ),
            width: width - 60,
            margin: const EdgeInsets.fromLTRB(45, 40, 45, 0),
            height: width - 100,
          ),
        ),
        Image.asset(
          "assets/images/woman-welcome.png",
          width: width - 32,
        ),
      ],
    );
  }
}
