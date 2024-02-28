import 'package:demo/widgets/text_write_your_numbers.dart';
import 'package:demo/widgets/tittle_chance.dart';
import 'package:flutter/material.dart';

import '../widgets/bet_to_your_luck.dart';
import '../widgets/custom_app_bar_1.dart';
import '../widgets/custom_decorative_2.dart';

class BetScreen extends StatelessWidget {
   
  const BetScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        clipBehavior: Clip.hardEdge,
        backgroundColor:const Color.fromRGBO(0, 70, 255, 1),
        child: Column(
          children: [
            const SizedBox(height: 18,),
            Image.asset('assets/images/dollar.png', color: Colors.white,),
            const Text('Recarga',style:  TextStyle(color: Colors.white),),
        ],
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
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
              children: const [
                BetYourLuck(),
                CustomDecorative2(),
                TitleChance(),
                TextWriteYourNumbers()
                ],
            ),
          ))
        ],
      ),
    );
  }
}