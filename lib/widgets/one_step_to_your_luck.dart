import 'package:flutter/material.dart';

class OneStepToYourLock extends StatelessWidget {
  const OneStepToYourLock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            color: const Color.fromRGBO(131, 208, 245, 1)
                .withOpacity(0.26)), //Color.fromARGB(255, 	131, 208, 245)
        margin: const EdgeInsets.symmetric(
            vertical: 20, horizontal: 100), //Posición en pantalla
        child: Padding(
            padding: const EdgeInsets.all(12), //Tamaño del margen
            child: RichText(
              text: const TextSpan(
                  text: 'A un paso de ',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(45, 46, 135, 1),
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: 'tu suerte',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(0, 195, 255, 1),
                            fontWeight: FontWeight.bold))
                  ]),
            )));
  }
}
