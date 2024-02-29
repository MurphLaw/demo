import 'package:demo/widgets/custom_multicolor_message.dart';
import 'package:flutter/material.dart';

import 'custom_icon_and_letter_2.dart';

class SucessTransactionImage extends StatelessWidget {
  const SucessTransactionImage({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'Wilson';
    String concept1 = '¡Apostaste a ';
    String concept2 = 'tu suerte!';
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(alignment: AlignmentDirectional.center, children: <Widget>[
          Image.asset('assets/images/success.png'),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Center(
                    child: Text(
                  name,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 70, 255),
                      fontWeight: FontWeight.bold),
                )),
              ),
              Row(
                children: [
                  const SizedBox(
                  width: 140,
                ),
                  CustomMultiColorMessage(text1: concept1, text2: concept2, 
                  fontText1: 16, fontText2: 16, 
                  colorText1: Color.fromARGB(255, 55, 55, 55), colorText2: Color.fromARGB(255, 0, 70, 255), 
                  marginVertical: 0, marginHorizontal: 0, 
                  colorBackground: Color.fromARGB(0, 0, 0, 0), 
                  containerWidth: 250, containerHeight: 40),
                ],
              )
            ],
          ),
        ]),
      ],
    );
  }
}
