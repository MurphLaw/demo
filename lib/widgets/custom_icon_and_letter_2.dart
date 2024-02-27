import 'package:flutter/material.dart';
import 'custom_icon_and_letterV2.dart';
class CustomIconAndLetter2 extends StatelessWidget {
  const CustomIconAndLetter2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Customcard2(text1: 'Programar', text2: 'juegos',iconRoot: 'assets/images/program.png',),
            Customcard2(text1: 'Simulador de', text2: 'Chance',iconRoot: 'assets/images/simulador.png',),
            Customcard2(text1: 'Acumulados', text2: 'y más',iconRoot: 'assets/images/acumulado.png',),
          ],
        ),
      ],
    );
  }
}