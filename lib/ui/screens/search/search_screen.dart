import 'package:flutter/material.dart';
import 'package:grocery/ui/shared/product_item_grid.dart';
import 'package:grocery/ui/shared/section_subtitle.dart';
import 'package:grocery/ui/shared/section_title.dart';

import 'widgets/history_items.dart';
import 'widgets/search_bar.dart';
import 'widgets/you_might_like.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(backgroundColor: Colors.transparent, toolbarHeight: 20),
            const SectionTitle(title: "Search"),
            const SizedBox(height: 30),
            const SearchBar(),
            const SizedBox(height: 30),
            const SectionSubtitle(title: "History"),
            const SizedBox(height: 20),
            const HistoryItems(),
            const SizedBox(height: 30),
            const SectionSubtitle(title: "You might like"),
            const SizedBox(height: 20),
            const YouMightLike(),
          ],
        ),
      ),
    );
  }
}
