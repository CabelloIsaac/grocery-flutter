import 'package:flutter/material.dart';
import 'package:grocery/ui/shared/screen_title.dart';

import 'widgets/bottom_section.dart';
import 'widgets/products_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: ScreenTitle(title: "Cart"),
          ),
          ProductsList(),
          BottomSection(),
        ],
      ),
    );
  }
}
