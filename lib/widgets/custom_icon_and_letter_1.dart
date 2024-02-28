import 'package:flutter/material.dart';
import 'custom_icon_and_letter.dart';
class CustomIconAndLetter1 extends StatelessWidget {
  const CustomIconAndLetter1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Customcard(text1: 'Te', text2: 'ayudamos',iconRoot: 'assets/images/support.png',elevation: 10,),
            Customcard(text1: 'Suerte', text2: 'automático',iconRoot: 'assets/images/luck.png',elevation: 10,),
            Customcard(text1: 'Mis', text2: 'favoritos',iconRoot: 'assets/images/favorite.png',elevation: 10,),
          ],
        ),
      ],
    );
  }
}