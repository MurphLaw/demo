import 'package:demo/models/product_model.dart';
import 'package:demo/screens/accumulation_gemas_modal.dart';
import 'package:demo/screens/bet_screen_pay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BetCartBottomAlternative extends StatefulWidget {
  const BetCartBottomAlternative({super.key});

  @override
  State<BetCartBottomAlternative> createState() => _BetCartBottomAlternativeState();
}

class _BetCartBottomAlternativeState extends State<BetCartBottomAlternative> {
  @override
  Widget build(BuildContext context) {
    String amount = '12.600';

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
                      "1 Apuestas \n\$ $amount",
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        AccumulationGemasModal.openModal(context);
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
                          child: Text('Ir a pagar',
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
