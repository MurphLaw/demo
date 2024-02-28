import 'package:demo/widgets/bets/bet_widget.dart';
import 'package:demo/widgets/bets/tittle_chance.dart';
import 'package:demo/widgets/custom_multicolor_message.dart';
import 'package:demo/widgets/text_write_your_numbers.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../widgets/commons/bet_to_your_luck.dart';
import '../widgets/commons/custom_app_bar_1.dart';
import '../widgets/custom_decorative_2.dart';

class BetCarScreen extends StatelessWidget {

  BetCarScreen({Key? key, required this.product}) : super(key: key);
  
  Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 1,
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  CustomMultiColorMessage(text1: 'Carrito de apuestas', text2: '', fontText1: 18, fontText2: 18, 
                  colorText1: Color.fromARGB(255, 0, 0, 0), colorText2: Color.fromARGB(255, 0, 0, 0), 
                  marginVertical: 0, marginHorizontal: 0, 
                  colorBackground: Color.fromARGB(255, 255, 255, 255), 
                  containerWidth: 200, containerHeight: 50),

                  
                  ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}