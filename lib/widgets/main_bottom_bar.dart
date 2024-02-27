import 'package:demo/widgets/generic_element_bottom_bar.dart';
import 'package:flutter/material.dart';

class MainBotttomBar extends StatelessWidget{
  const MainBotttomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      child:
       SizedBox(
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GenericElementBottomBar(image: 'assets/images/home.png', text: 'Inicio'),
          GenericElementBottomBar(image: 'assets/images/results.png', text: '¿Ganaste?'),
          const SizedBox(width:70),
          GenericElementBottomBar(image: 'assets/images/services.png', text: 'Servicios'),
          GenericElementBottomBar(image: 'assets/images/benefits.png', text: 'Beneficios'),
        ],
      )));
    
  }
}