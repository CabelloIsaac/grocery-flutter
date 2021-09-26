import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:grocery/ui/screens/home/widgets/section_title.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SectionTitle(
            title: "Categories",
            seeAllOnTap: () {},
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _CategoryItem(
                title: "Dairy",
                color: Colors.yellowAccent,
                image: "assets/icons/dairy-products.png",
              ),
              _CategoryItem(
                title: "Meat",
                color: Colors.redAccent,
                image: "assets/icons/meat.png",
              ),
              _CategoryItem(
                title: "Fruits",
                color: Colors.orangeAccent,
                image: "assets/icons/orange-juice.png",
              ),
              _CategoryItem(
                title: "Vegie",
                color: Colors.greenAccent,
                image: "assets/icons/lettuce.png",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem({
    Key? key,
    required this.title,
    required this.image,
    required this.color,
  }) : super(key: key);

  final String title;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        width: (width / 4) - 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color.withOpacity(0.3),
        ),
        child: Column(
          children: [
            Image.asset(image),
            const SizedBox(height: 16),
            Text(title),
          ],
        ),
      ),
    );
  }
}
