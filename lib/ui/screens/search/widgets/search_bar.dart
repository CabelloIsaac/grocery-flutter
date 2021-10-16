import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
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
    );
  }
}
