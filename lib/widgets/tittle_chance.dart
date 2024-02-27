import 'package:demo/widgets/custom_icon_and_text_title.dart';
import 'package:flutter/material.dart';


class TitleChance extends StatelessWidget {
  const TitleChance({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomIconAndTextTittle(
      text: 'Chance', iconRoot: 'assets/images/chance.png', 
      fontText: 18, iconSize: 30, colorText: Color.fromARGB(255,45, 46, 135));
  }
}



