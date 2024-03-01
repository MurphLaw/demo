import 'package:flutter/material.dart';

import 'custom_icon_and_letter_2.dart';

class CustomExtraWidgetSuccess extends StatelessWidget {
  final String text1;
  final String text2;
  final double fontText1;
  final double fontText2;
  final Color colorText1;
  final Color colorText2;
  final double marginVertical;
  final double marginHorizontal;
  final double containerWidth;
  final double containerHeight;
  final Color colorBackground;
  final bool boldOrNot1;
  final bool boldOrNot2;

  const CustomExtraWidgetSuccess({
    super.key,
    required this.text1,
    required this.text2,
    required this.fontText1,
    required this.fontText2,
    required this.colorText1,
    required this.colorText2,
    required this.marginVertical,
    required this.marginHorizontal,
    required this.containerWidth,
    required this.containerHeight,
    required this.colorBackground,
    required this.boldOrNot1,
    required this.boldOrNot2,
  });

  @override
  Widget build(BuildContext context) {
    FontWeight fontWeight1 = FontWeight.normal;
    FontWeight fontWeight2 = FontWeight.normal;
    if (boldOrNot1 == true) {
      fontWeight1 = FontWeight.bold;
    }
    if (boldOrNot2 == true) {
      fontWeight2 = FontWeight.bold;
    }
    return Container(
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(0)),
            color: colorBackground), //Color.fromARGB(255, 	131, 208, 245)
        margin: EdgeInsets.symmetric(
            vertical: marginVertical,
            horizontal: marginHorizontal), //Posición en pantalla
        child: Padding(
          padding: const EdgeInsets.all(0), //Tamaño del margen
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text1,
                style: TextStyle(fontSize: fontText1, fontWeight: fontWeight1, color: colorText1),
              ),
              Text(
                text2,
                style: TextStyle(fontSize: fontText2, fontWeight: fontWeight2, color: colorText2),
              ),
            ],
          ),
        ));
  }
}
