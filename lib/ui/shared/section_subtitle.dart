import 'package:flutter/material.dart';
import 'package:grocery/utils/colors.dart';

class SectionSubtitle extends StatelessWidget {
  const SectionSubtitle({Key? key, required this.title, this.seeAllOnTap})
      : super(key: key);

  final String title;
  final Function()? seeAllOnTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (seeAllOnTap != null)
          GestureDetector(
            onTap: seeAllOnTap,
            child: const Text(
              "See all",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: MyColors.primary,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
      ],
    );
  }
}
