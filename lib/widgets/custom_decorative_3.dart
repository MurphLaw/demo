import 'package:demo/theme/theme_chance.dart';
import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  final double fontText;
  final Color colorText;
  final double containerWidth;
  final double containerHeight;
  final Color colorBackground;
  const CustomText({super.key, 
  required this.text, required this.fontText, required this.colorText, 
  required this.containerWidth, required this.containerHeight, required this.colorBackground});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsets.all(5),
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(ThemeChance.borderRadiusText)),
          color: colorBackground),
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 100), //Posición en pantalla
        child: Padding(
          padding: const EdgeInsets.all(12), //Tamaño del margen
          child: RichText(text: TextSpan(
            text: text, 
            style: TextStyle(fontSize: fontText, color: colorText, 
            decoration: TextDecoration.underline, fontWeight: FontWeight.bold, 
            decorationThickness: 2.5,) ,
          ),
          )
          )
      );



  }
}