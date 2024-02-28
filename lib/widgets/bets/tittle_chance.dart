import 'package:demo/widgets/custom_icon_and_text_title.dart';
import 'package:flutter/material.dart';


class TitleChance extends StatelessWidget {
  TitleChance({super.key, required this.text, required this.iconRoot});

  String text;

  String iconRoot;

  @override
  Widget build(BuildContext context) {
    return CustomIconAndTextTittle(
      text: text, iconRoot: iconRoot, 
      fontText: 18, iconSize: 30, colorText: Color.fromARGB(255,45, 46, 135), width: MediaQuery.of(context).size.width * 0.3,);
  }
}



