import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/address_container.dart';
import 'widgets/categories.dart';
import 'widgets/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            HomeBanner(),
            SizedBox(height: 30),
            AddressContainer(),
            SizedBox(height: 30),
            Categories(),
          ],
        ),
      ),
    );
  }
}
