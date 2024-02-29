import 'package:flutter/material.dart';
import '../theme/theme_chance.dart';
class Customcard2 extends StatelessWidget {
  final String text1;
  final String text2;
  final double fontText1;
  final double fontText2;
  final String iconRoot;
  final double elevation;
  final double widthSixeBox;
  final double heightSixeBox;


  const Customcard2({super.key, required this.text1, required this.text2, 
  required this.iconRoot, required this.elevation, 
  required this.widthSixeBox, required this.heightSixeBox, 
  required this.fontText1, required this.fontText2});

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
          width: widthSixeBox,
          height: heightSixeBox,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.all(0),
              child: RichText(
                text: TextSpan(        
                  text: text1, 
                  style: TextStyle(
                  fontSize: fontText1, 
                  color: ThemeChance.letterColor1Home),),),),
              RichText(text: TextSpan(
                text: text2, 
                style: TextStyle(
                fontSize: fontText2, 
                color: ThemeChance.letterColor1Home),),)
            ],),
        ),
      ],
    ),
    );
  }
}