import 'package:flutter/material.dart';
import 'package:grocery/ui/shared/product_list_item.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: 3,
        separatorBuilder: (_, __) => const Divider(color: Colors.transparent),
        itemBuilder: (context, index) {
          return const ProductItem(canDismiss: true);
        },
      ),
    );
  }
}
