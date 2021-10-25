import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery/ui/shared/section_subtitle.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SectionSubtitle(title: "Orange Sunkist"),
            SizedBox(height: 20),
            Text(
              "\$45.000",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.heart),
        ),
      ],
    );
  }
}
