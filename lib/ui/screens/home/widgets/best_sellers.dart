import 'package:flutter/material.dart';
import 'package:grocery/ui/shared/product_item_grid.dart';

import '../../../shared/section_title.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SectionTitle(title: "Best Seller"),
          const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              mainAxisExtent: 290,
            ),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return const ProductItem();
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
