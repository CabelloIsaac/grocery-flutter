import 'package:flutter/material.dart';
import 'package:grocery/utils/colors.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double circleSize = (size.width / 2) + 20;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Container(
            height: size.width / 2,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: MyColors.primary,
            ),
          ),
          Positioned(
            left: circleSize / -2,
            top: circleSize / -2,
            child: Container(
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 40,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            top: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Get your first order 35% off",
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Shop Now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          backgroundColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images/fruits.png",
                  width: size.width / 3,
                  height: size.width / 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
