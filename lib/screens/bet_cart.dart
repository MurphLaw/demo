import 'package:demo/widgets/bet_car_widget.dart';
import 'package:demo/widgets/custom_multicolor_message.dart';
import 'package:flutter/material.dart';
import '../models/bet_car_model.dart';

import '../widgets/commons/custom_app_bar_1.dart';

class BetCarScreen extends StatelessWidget {
  BetCarScreen({Key? key, required this.betCarListModel}) : super(key: key);

  List<BetCar> betCarListModel;

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
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomMultiColorMessage(
                      text1: 'Carrito de apuestas',
                      text2: '',
                      fontText1: 18,
                      fontText2: 18,
                      colorText1: Color.fromARGB(255, 0, 0, 0),
                      colorText2: Color.fromARGB(255, 0, 0, 0),
                      marginVertical: 0,
                      marginHorizontal: 0,
                      colorBackground: Color.fromARGB(255, 255, 255, 255),
                      containerWidth: 200,
                      containerHeight: 50),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: ((context, index) {
                        return BetCarWidget(betCarModel: betCarListModel[index]);
                      }),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
