import 'package:flutter/material.dart';

class ExtraInformationHome extends StatelessWidget {
  const ExtraInformationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        height: 150,
        child: Padding(
            padding: const EdgeInsets.all(12), //Tamaño del margen
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, count) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      width: 200,
                      height: 65,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle, color: Colors.blue)),
                );
              },
            )));
  }
}
