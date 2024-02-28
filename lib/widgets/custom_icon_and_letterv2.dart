import 'package:flutter/material.dart';
import '../theme/theme_chance.dart';
class Customcard2 extends StatelessWidget {
  final String text1;
  final String text2;
  final String iconRoot;
  final double elevation;

  const Customcard2({super.key, required this.text1, required this.text2, 
  required this.iconRoot, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    elevation: elevation,
    child: Column(
      children: [
        ImageIcon(AssetImage(iconRoot),//const ImageIcon(AssetImage("assets/Grupo9179.png")
          color: ThemeChance.iconsColor1Home, size: ThemeChance.sizeIcon1Home,),
        SizedBox(
          width: ThemeChance.widthWidgetIcon1Home,
          height: ThemeChance.heightWidgetIcon1Home,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.all(0),
              child: RichText(
                text: TextSpan(        
                  text: text1, 
                  style: const TextStyle(
                  fontSize: ThemeChance.fontSizeWidgetIcon1Home, 
                  color: ThemeChance.letterColor1Home),),),),
              RichText(text: TextSpan(
                text: text2, 
                style: const TextStyle(
                fontSize: ThemeChance.fontSizeWidgetIcon1Home, 
                color: ThemeChance.letterColor1Home),),)
            ],),
        ),
      ],
    ),
    );
  }
}