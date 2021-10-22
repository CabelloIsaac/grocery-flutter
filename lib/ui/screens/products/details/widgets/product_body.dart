import 'package:flutter/material.dart';

import 'categories.dart';
import 'description.dart';
import 'title_section.dart';
import 'variation_selection.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TitleSection(),
            SizedBox(height: 40),
            Categories(),
            VariationSelection(),
            Description(),
          ],
        ),
      ),
    );
  }
}
