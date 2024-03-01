import 'package:flutter/material.dart';

import '../models/bet_car_model.dart';
import 'custom_icon_and_letterV2.dart';
import 'custom_icon_and_letter_1.dart';

class BetCarResumeWidget extends StatelessWidget {
  BetCar betCarModel;
  BetCarResumeWidget({Key? key, required this.betCarModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Amarillo
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height * 0.19,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      margin: const EdgeInsets.symmetric(),
      //color: Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //azul
              alignment: AlignmentDirectional.centerStart,
              width: 400,
              height: MediaQuery.of(context).size.height * 0.033,
              margin: const EdgeInsets.symmetric(),
              color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      betCarModel.betNumber.toString(),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              ),
            ),
            Container(
                //verde
                width: 400,
                height: MediaQuery.of(context).size.height * 0.02,
                margin: const EdgeInsets.symmetric(),
                color: Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Directo',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        '\$ ' + betCarModel.directValue.toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                )),
            Container(
                //verde
                width: 400,
                height: MediaQuery.of(context).size.height * 0.02,
                margin: const EdgeInsets.symmetric(),
                color: Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Combinado',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        '\$ ' + betCarModel.mixValue.toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                )),
            Container(
                //rosado
                alignment: AlignmentDirectional.centerStart,
                width: 300,
                height: MediaQuery.of(context).size.height * 0.09,
                margin: const EdgeInsets.symmetric(),
                color: Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Customcard2(
                            text1: 'Cafeterito',
                            text2: '',
                            iconRoot: 'assets/images/betIcon3.png',
                            elevation: 10,
                            fontText1: 10,
                            fontText2: 14,
                            widthSixeBox: 70,
                            heightSixeBox: 30,
                          ),
                          Customcard2(
                            text1: 'Valle',
                            text2: '',
                            iconRoot: 'assets/images/betIcon2.png',
                            elevation: 10,
                            fontText1: 10,
                            fontText2: 14,
                            widthSixeBox: 70,
                            heightSixeBox: 30,
                          ),
                          Customcard2(
                            text1: 'Cafeterito',
                            text2: '',
                            iconRoot: 'assets/images/betIcon1.png',
                            elevation: 10,
                            fontText1: 10,
                            fontText2: 14,
                            widthSixeBox: 70,
                            heightSixeBox: 30,
                          ),
                          // Customcard2(text1: 'Simulador de', text2: 'Chance',iconRoot: 'assets/images/simulador.png',elevation: 10),
                          // Customcard2(text1: 'Acumulados', text2: 'y más',iconRoot: 'assets/images/acumulado.png',elevation: 10),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
