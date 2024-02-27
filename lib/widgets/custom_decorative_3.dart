import 'package:flutter/material.dart';

class CustomDecorative3 extends StatelessWidget {
  const CustomDecorative3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
       bottom: 5, // Space between underline and text
     ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          color: Colors.white),
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 100), //Posición en pantalla
        child: Padding(
          padding: const EdgeInsets.all(12), //Tamaño del margen
          child: RichText(text: const TextSpan(
            text: 'Ver favoritos', 
            style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 70, 255), 
            decoration: TextDecoration.underline, fontWeight: FontWeight.bold, 
            decorationThickness: 2.5,) ,
          ),
          )
          )
      );



  }
}