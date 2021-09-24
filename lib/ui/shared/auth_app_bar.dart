import 'package:flutter/material.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SliverAppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      expandedHeight: size.height / 3,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Image.asset(
              "assets/images/auth-header.jpg",
              height: size.height / 3,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
