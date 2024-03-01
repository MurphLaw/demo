import 'package:flutter/material.dart';

import '../models/bet_car_model.dart';
import 'custom_icon_and_letterV2.dart';
import 'custom_icon_and_letter_1.dart';

class BetCarWidget extends StatelessWidget {
  BetCar betCarModel;
  BetCarWidget({Key? key, required this.betCarModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( //Amarillo
                    width: 450,
                    height: 190,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    margin: const EdgeInsets.symmetric(),
                    //color: Color.fromARGB(255, 255, 255, 255),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(  //azul
                            alignment: AlignmentDirectional.centerStart,
                            width: 400,
                            height: 35,
                            margin: const EdgeInsets.symmetric(),
                            color: Color.fromARGB(255, 98, 97, 201),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    betCarModel.betNumber.toString(),
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  IconButton(
                                    alignment: Alignment.topCenter,
                                    padding: EdgeInsets.all(0),
                                    icon: new Icon(Icons.delete_forever),
                                    color: Color.fromARGB(255, 0, 70, 255),
                                    onPressed: () {
                                      print('Aquí se elimina');
                                    },
                                  ),
                                  const SizedBox(
                                    width: 115,
                                  ),
                                  Text(
                                    'Total \$ ' +
                                        (betCarModel.directValue +
                                                betCarModel.mixValue)
                                            .toString(),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container( //verde
                              alignment: AlignmentDirectional.center,
                              width: 400,
                              height: 30,
                              margin: const EdgeInsets.symmetric(),
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Combinado \$' +
                                    betCarModel.mixValue.toString() +
                                    '  |  ' +
                                    'Directo \$' +
                                    betCarModel.directValue.toString()),
                              )),
                          Container( //rosado
                              alignment: AlignmentDirectional.centerStart,
                              width: 400,
                              height: 95,
                              margin: const EdgeInsets.symmetric(),
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: const [
                                        Customcard2(
                                          text1: 'Cafeterito',
                                          text2: '',
                                          iconRoot:
                                              'assets/images/betIcon3.png',
                                          elevation: 10,
                                          fontText1: 10,
                                          fontText2: 14,
                                          widthSixeBox: 70,
                                          heightSixeBox: 30,
                                        ),
                                        Customcard2(
                                          text1: 'Valle',
                                          text2: '',
                                          iconRoot:
                                              'assets/images/betIcon2.png',
                                          elevation: 10,
                                          fontText1: 10,
                                          fontText2: 14,
                                          widthSixeBox: 70,
                                          heightSixeBox: 30,
                                        ),
                                        Customcard2(
                                          text1: 'Cafeterito',
                                          text2: '',
                                          iconRoot:
                                              'assets/images/betIcon1.png',
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



