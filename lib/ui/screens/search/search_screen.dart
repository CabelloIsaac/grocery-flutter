import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery/utils/colors.dart';

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
            const Text(
              "Search",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Material(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: const [
                      Icon(Icons.search),
                      SizedBox(width: 16),
                      Text("Search Product"),
                    ],
                  ),
                ),
              ),
            ),
            // const AddressContainer(),
            const SizedBox(height: 30),
            // const Categories(),
            const SizedBox(height: 30),
            // const BestSellers(),
          ],
        ),
      ),
    );
  }
}
