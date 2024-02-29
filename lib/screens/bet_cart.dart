import 'package:demo/widgets/custom_multicolor_message.dart';
import 'package:flutter/material.dart';
import '../models/bet_car_model.dart';

import '../widgets/commons/custom_app_bar_1.dart';
import '../widgets/custom_icon_and_letterV2.dart';

class BetCarScreen extends StatelessWidget {
  BetCarScreen({Key? key, required this.betCarModel}) : super(key: key);

  BetCar betCarModel;

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
                  Container(
                    width: 450,
                    height: 180,
                    margin: const EdgeInsets.symmetric(),
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: AlignmentDirectional.centerStart,
                            width: 400,
                            height: 35,
                            margin: const EdgeInsets.symmetric(),
                            color: const Color.fromARGB(255, 128, 127, 221),
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
                                    width: 8,
                                  ),
                                  IconButton(
                                    icon: new Icon(Icons.delete_forever),
                                    color: Color.fromARGB(255, 0, 70, 255),
                                    onPressed: () {
                                      print('Aquí se elimina');
                                    },
                                  ),
                                  const SizedBox(
                                    width: 140,
                                  ),
                                  Text(
                                    'Total \$ ' +
                                        (betCarModel.directValue +
                                                betCarModel.mixValue)
                                            .toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                              alignment: AlignmentDirectional.center,
                              width: 400,
                              height: 30,
                              margin: const EdgeInsets.symmetric(),
                              color: Color.fromARGB(255, 87, 184, 74),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Combinado \$' +
                                    betCarModel.mixValue.toString() +
                                    '  |  ' +
                                    'Directo \$' +
                                    betCarModel.directValue.toString()),
                              )),
                          Container(
                              alignment: AlignmentDirectional.centerStart,
                              width: 400,
                              height: 95,
                              margin: const EdgeInsets.symmetric(),
                              color: Color.fromARGB(255, 218, 47, 132),
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
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
