import 'package:demo/screens/bet_cart.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';
import 'package:flutter/material.dart';

import '../mocks/bet_car_data.dart';
import 'bet_car_widget.dart';
import 'custom_multicolor_message.dart';

class RounderExpansion extends StatelessWidget {
  const RounderExpansion({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: RoundedExpansionTile(
        leading: Image.asset("assets/images/chance.png"),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        title: Text('Chance',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16)),
        trailing: Icon(
          Icons.keyboard_arrow_down,
          color: const Color.fromRGBO(0, 42, 135, 1),
        ),
        rotateTrailing: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xF9F9F9),
                  width: 2,
                ),
                color: Color(0xF9F9F9),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
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
                              colorBackground:
                                  Color.fromARGB(255, 255, 255, 255),
                              containerWidth: 200,
                              containerHeight: 50),
                          Expanded(
                            child: ListView.builder(
                              itemCount: availableBets.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: ((context, index) {
                                return BetCarWidget(
                                    betCarModel: availableBets[index]);
                              }),
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
