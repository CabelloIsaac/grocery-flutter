import 'package:flutter/material.dart';
import 'package:grocery/ui/shared/section_subtitle.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 30),
        SectionSubtitle(title: "Product Description"),
        SizedBox(height: 20),
        Text(
          "Wrap your OutlinedButton inside a DecoratedBox. Set the shape of your DecoratedBox to the same shape your OutlinedButton. Now you can use the color attribute of your DecoratedBox to change the color. The result will still have a small padding around the OutlinedButton. To remove this you can wrap the DecoratedBox inside a Theme in which you adjust the ButtonTheme. Inside the ButtonTheme you want to set materialTapTargetSize: MaterialTapTargetSize.shrinkWrap.",
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
