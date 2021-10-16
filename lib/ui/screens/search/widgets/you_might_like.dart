import 'package:flutter/material.dart';
import 'package:grocery/ui/shared/product_item_grid.dart';

class YouMightLike extends StatelessWidget {
  const YouMightLike({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
    );
  }
}
