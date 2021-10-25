import 'package:flutter/material.dart';

class HeaderBackground extends StatelessWidget {
  const HeaderBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Image.asset(
      "assets/images/profile-header.jpg",
      height: (width / 1.6),
      width: width,
      fit: BoxFit.cover,
    );
  }
}
