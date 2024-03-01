import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BetCartBottom extends StatefulWidget {
  const BetCartBottom({super.key});

  @override
  State<BetCartBottom> createState() => _BetCartBottomState();
}

class _BetCartBottomState extends State<BetCartBottom> {
  @override
  Widget build(BuildContext context) {
    String amount = '1000000';

    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 10.0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: MediaQuery.of(context).size.height * 0.06,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "10 Apuestas \n\$ $amount",
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        print('otra pantalla');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.04,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 70, 255, 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Align(
                          alignment: Alignment(0, 0),
                          child: Text('Confirmar apuesta',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
