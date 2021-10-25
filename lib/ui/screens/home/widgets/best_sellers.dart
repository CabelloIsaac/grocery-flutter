import 'package:flutter/material.dart';
import 'package:grocery/ui/shared/product_list_item.dart';
// import 'package:grocery/ui/shared/product_item_grid.dart';

import '../../../shared/section_title.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SectionTitle(title: "Best Sellers"),
          const SizedBox(height: 20),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            separatorBuilder: (_, __) =>
                const Divider(color: Colors.transparent),
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
