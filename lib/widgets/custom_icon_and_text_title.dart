import 'package:flutter/material.dart';

class CustomIconAndTextTittle extends StatelessWidget {
  final String text;
  final String iconRoot;
  final double iconSize;
  final double fontText;
  final Color colorText;
  final double width;

  const CustomIconAndTextTittle(
      {super.key,
      required this.text,
      required this.iconRoot,
      required this.fontText,
      required this.iconSize,
      required this.colorText,required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(
                  iconRoot), //const ImageIcon(AssetImage("assets/Grupo9179.png")
              size: iconSize,
            ),
            SizedBox(
              width: width,
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: text,
                        style: TextStyle(
                            fontSize: fontText,
                            color: colorText,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
