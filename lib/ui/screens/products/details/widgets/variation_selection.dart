import 'package:flutter/material.dart';
import 'package:grocery/ui/shared/section_subtitle.dart';

class VariationSelection extends StatelessWidget {
  const VariationSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _variations = ["100 g", "500 g", "1 kg", "2 kg"];

    return Column(
      children: [
        const SizedBox(height: 30),
        const SectionSubtitle(title: "Select Weight"),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: _variations
                .map<Widget>(
                  (e) => Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(e),
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              width: 1.5,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
