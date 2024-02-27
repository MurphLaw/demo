import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenericElementBottomBar extends StatelessWidget{


  String text;
  String image;

  GenericElementBottomBar({super.key,required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    if(text == 'Inicio'){
      return SizedBox(
        
        child: Column(
          children: [
            Image.asset(image, color: const Color.fromRGBO(0, 70, 255, 1),),
            Text(text,style: const TextStyle(color: Color.fromRGBO(0, 70, 255, 1)),),
        ],
          ),
      );
    }
    return SizedBox(
      
      child: Column(
          children: [
            Image.asset(image,),
            Text(text),
        ],
      ),
    );
    
  }


  
}