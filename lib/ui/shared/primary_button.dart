import 'package:flutter/material.dart';
import 'package:grocery/utils/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.isExpanded = true,
  }) : super(key: key);

  final String text;
  final void Function()? onPressed;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isExpanded ? double.infinity : null,
      child: TextButton(
        child: Text(text),
        onPressed: onPressed,
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: MyColors.primary,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
