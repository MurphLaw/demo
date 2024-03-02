import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              //Seleccionar método de pago
              Expanded(
                  flex: 2,
                  child: Text(
                    '     Gana más',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
