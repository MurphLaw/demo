import 'package:flutter/material.dart';

class RechargesButton extends StatelessWidget{
  const RechargesButton({super.key});

  @override
  Widget build(BuildContext context) {
   return FloatingActionButton.large(
          onPressed: () {},
          clipBehavior: Clip.hardEdge,
          backgroundColor: const Color.fromRGBO(0, 70, 255, 1),
          child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                Image.asset(
                  'assets/images/dollar.png',
                  color: Colors.white,
                ),
                const Text(
                  'Recarga',
                  style: TextStyle(color: Colors.white),
                ),
              ],
          ));
  }
  
}