import 'package:flutter/material.dart';
class CustomDecorative1 extends StatelessWidget {
  const CustomDecorative1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          color: Colors.white),//Color.fromARGB(255, 	131, 208, 245)
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 100), //Posición en pantalla
        child: Padding(
          padding: const EdgeInsets.all(12), //Tamaño del margen
          child: RichText(text: const TextSpan(
            text: 'Apuéstale a ', 
            style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 45, 46, 135), fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'tu suerte', 
                style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 	0, 195, 255), fontWeight: FontWeight.bold)
          )
            ]
          ),
          )
          )
      );
  }
}