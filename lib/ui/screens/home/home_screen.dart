import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/address_container.dart';
import 'widgets/best_sellers.dart';
import 'widgets/categories.dart';
import 'widgets/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(backgroundColor: Colors.transparent, toolbarHeight: 20),
            const HomeBanner(),
            const SizedBox(height: 30),
            const AddressContainer(),
            const SizedBox(height: 30),
            const Categories(),
            const SizedBox(height: 30),
            const BestSellers(),
          ],
        ),
      ),
    );
  }
}
