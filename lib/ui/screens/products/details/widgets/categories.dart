import 'package:flutter/material.dart';
import 'package:grocery/utils/colors.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: MyColors.primary.withOpacity(0.3),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/icons/orange-juice.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 10),
                const Text("Fruits"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
