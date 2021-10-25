import 'package:flutter/material.dart';
import 'package:grocery/ui/shared/product_list_item.dart';

class YouMightLike extends StatelessWidget {
  const YouMightLike({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      separatorBuilder: (_, __) => const Divider(color: Colors.transparent),
      itemBuilder: (BuildContext context, int index) {
        return const ProductItem();
      },
    );
  }
}
