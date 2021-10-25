import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:grocery/utils/colors.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: const Key("1"),
      onDismissed: (_) {},
      background: const _OnDismissBackground(
        alignment: Alignment.centerLeft,
      ),
      secondaryBackground: const _OnDismissBackground(
        alignment: Alignment.centerRight,
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            const _ProductImage(),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _ProductTitle(),
                SizedBox(height: 10),
                _ProductPrice(),
                _ProductQuantity()
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _ProductQuantity extends StatelessWidget {
  const _ProductQuantity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.remove, color: MyColors.primary),
        ),
        const SizedBox(width: 10),
        const Text("2kg"),
        const SizedBox(width: 10),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add, color: MyColors.primary),
        ),
      ],
    );
  }
}

class _ProductPrice extends StatelessWidget {
  const _ProductPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "\$45.000",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}

class _ProductTitle extends StatelessWidget {
  const _ProductTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Red Cherry",
      style: TextStyle(fontSize: 18),
    );
  }
}

class _ProductImage extends StatelessWidget {
  const _ProductImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: CachedNetworkImage(
        imageUrl:
            "https://www.ocu.org/-/media/ocu/images/newsletters/members/consumer/2020/naranjas_3_16x9.jpg",
        height: (width - 30) / 3,
        width: (width - 30) / 3,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            const Center(child: Icon(Icons.error)),
        fit: BoxFit.cover,
      ),
    );
  }
}

class _OnDismissBackground extends StatelessWidget {
  const _OnDismissBackground({Key? key, required this.alignment})
      : super(key: key);

  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.redAccent,
      ),
      padding: const EdgeInsets.all(20),
      child: Align(
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 60,
        ),
        alignment: alignment,
      ),
    );
  }
}
