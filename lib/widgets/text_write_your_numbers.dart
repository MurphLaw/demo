import 'package:demo/widgets/custom_multicolor_message.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../mocks/bet_car_data.dart';
import '../screens/bet_cart.dart';

class TextWriteYourNumbers extends StatelessWidget {
  const TextWriteYourNumbers({super.key});


  @override
  Widget build(BuildContext context) {
    var listBets = availableBets;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            const CustomMultiColorMessage(
              text1: 'Escribe tus números de ',
              text2: 'la suerte',
              fontText1: 16,
              fontText2: 16,
              colorText1: Color.fromARGB(255, 0, 0, 0),
              colorText2: Color.fromRGBO(0, 195, 255, 1),
              marginVertical: 10,
              marginHorizontal: 10,
              colorBackground: Color.fromRGBO(255, 255, 255, 1),
              containerWidth: 175,
              containerHeight: 70,
            ),
            SizedBox(
              width: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: RichText(
                      text: TextSpan(
                          text: 'Ver favoritos',
                          style: const TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 70, 255),
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return BetCarScreen(betCarModel: try1,);
                                  }),
                                ),
                              );
                            }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
