import 'package:flutter/material.dart';

import 'widgets/bottom_add_to_cart.dart';
import 'widgets/my_back_button.dart';
import 'widgets/product_body.dart';
import 'widgets/product_image.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String route = "/ProductDetailsScreen";

  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ProductImage(),
                  ProductBody(),
                ],
              ),
            ),
            const MyBackButton(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAddToCart(),
    );
  }
}
