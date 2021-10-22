import 'package:flutter/material.dart';
import 'package:grocery/ui/screens/cart/widgets/cart_product_item.dart';
import 'package:grocery/ui/shared/section_subtitle.dart';
import 'package:grocery/ui/shared/section_title.dart';
import 'package:grocery/utils/colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: SectionTitle(title: "Cart"),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(20),
              itemCount: 3,
              separatorBuilder: (_, __) =>
                  const Divider(color: Colors.transparent),
              itemBuilder: (context, index) {
                return const CartProductItem();
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
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
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SectionSubtitle(title: "Total Price"),
                      SizedBox(height: 10),
                      Text(
                        "\$45.000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Buy Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: MyColors.primary,
                        primary: Colors.white,
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
