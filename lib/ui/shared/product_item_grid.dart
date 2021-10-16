import 'package:flutter/material.dart';
import 'package:grocery/utils/functions.dart';
import 'package:palette_generator/palette_generator.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({
    Key? key,
    // required this.title,
    // required this.image,
  }) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  Color _backgroundColor = Colors.white;
  Color _textColor = Colors.black;
  final AssetImage _image = const AssetImage("assets/images/cocacola.jpg");

  @override
  void initState() {
    super.initState();
    getImagePalette(_image);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Container(
        width: (width / 2) - 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: _backgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image(
                image: _image,
                width: (width / 2),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "NARANJA JUGO MIEL*2.5kg APROX. MALLA"
                        .capitalizeFirstOfEach,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: _textColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "\$8.000",
                      style: DefaultTextStyle.of(context).style.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: _textColor,
                          ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' /UND'.allInLowercase,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Calculate dominant color from ImageProvider
  void getImagePalette(ImageProvider imageProvider) async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(imageProvider);

    if (paletteGenerator.dominantColor?.color != null) {
      setState(() {
        _backgroundColor = paletteGenerator.dominantColor!.color;
      });
    }
    setTextColor();
  }

  void setTextColor() {
    int d = 0;

    double luminance = (0.299 * _backgroundColor.red +
            0.587 * _backgroundColor.green +
            0.114 * _backgroundColor.blue) /
        255;

    if (luminance > 0.5) {
      d = 0;
    } else {
      d = 255;
    }

    setState(() {
      _textColor = Color.fromARGB(_backgroundColor.alpha, d, d, d);
    });
  }
}
