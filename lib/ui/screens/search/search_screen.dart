import 'package:flutter/material.dart';
import 'package:grocery/ui/shared/screen_title.dart';
import 'package:grocery/ui/shared/section_subtitle.dart';

import 'widgets/history_items.dart';
import 'widgets/search_bar.dart';
import 'widgets/you_might_like.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ScreenTitle(title: "Search"),
            SizedBox(height: 30),
            SearchBar(),
            SizedBox(height: 30),
            SectionSubtitle(title: "History"),
            SizedBox(height: 20),
            HistoryItems(),
            SizedBox(height: 30),
            SectionSubtitle(title: "You might like"),
            SizedBox(height: 20),
            YouMightLike(),
          ],
        ),
      ),
    );
  }
}
