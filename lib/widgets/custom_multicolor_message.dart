import 'package:demo/theme/theme_chance.dart';
import 'package:flutter/material.dart';

class CustomMultiColorMessage extends StatelessWidget {
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
  const CustomMultiColorMessage(
      {super.key,
      required this.text1,
      required this.text2,
      required this.fontText1,
      required this.fontText2,
      required this.colorText1,
      required this.colorText2,
      required this.marginVertical,
      required this.marginHorizontal,
      required this.colorBackground,
      required this.containerWidth,
      required this.containerHeight});
//Color.fromARGB(255, 45, 46, 135)  Color.fromARGB(255, 	0, 195, 255)
  @override
  Widget build(BuildContext context) {
    return Container(
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
                Radius.circular(ThemeChance.borderRadiusSize)),
            color: colorBackground), //Color.fromARGB(255, 	131, 208, 245)
        margin: EdgeInsets.symmetric(
            vertical: marginVertical,
            horizontal: marginHorizontal), //Posición en pantalla
        child: Padding(
            padding: const EdgeInsets.all(
                ThemeChance.marginSize), //Tamaño del margen
            child: RichText(
              text: TextSpan(
                  text: text1,
                  style: TextStyle(
                      fontSize: fontText1,
                      color: colorText1,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: text2,
                        style: TextStyle(
                            fontSize: fontText2,
                            color: colorText2,
                            fontWeight: FontWeight.bold))
                  ]),
            )));
  }
}
