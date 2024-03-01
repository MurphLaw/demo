import 'package:flutter/material.dart';

import '../models/bet_car_model.dart';

class SuccessBetTotal extends StatefulWidget {
  SuccessBetTotal({super.key, required this.bets});

  List<BetCar> bets;

  @override
  State<SuccessBetTotal> createState() => _SuccessBetTotalState();
}

class _SuccessBetTotalState extends State<SuccessBetTotal> {
  late String totalDeposit;
  late String iva;

  final textStyle =
      const TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 17);

  @override
  void initState() {
    _getTotalDeposit();
    _getIva();
    super.initState();
  }

  void _getTotalDeposit() {
    double amount = 0;
    for (BetCar betCar in widget.bets) {
      amount = amount +
          (betCar.mixValue.toDouble().round() +
              betCar.directValue.toDouble().round());
    }
    totalDeposit = amount.round().toString();
  }

  void _getIva() {
    iva = '0';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Total apostado',
                style: textStyle,
                textAlign: TextAlign.left,
              ),
              const Spacer(),
              Text(
                '\$$totalDeposit',
                style: textStyle,
                textAlign: TextAlign.right,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'IVA',
                style: textStyle,
                textAlign: TextAlign.left,
              ),
              const Spacer(),
              Text(
                '\$$iva',
                style: textStyle,
                textAlign: TextAlign.right,
              ),
            ],
          ),
          const Divider(
            indent: 10,
            endIndent: 10,
            color: Colors.grey,
            ),
          Row(
            children: [
              Text(
                'Total a pagar',
                style: textStyle.copyWith(color:const Color.fromRGBO(45, 46, 135, 1)),
                textAlign: TextAlign.left,
              ),
              const Spacer(),
              Text(
                '\$$totalDeposit',
                style: textStyle.copyWith(color:const Color.fromRGBO(45, 46, 135, 1)),
                textAlign: TextAlign.right,
              ),
            ],
          )
        ],
      ),
    );
  }
}
