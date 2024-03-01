import 'package:demo/mocks/bet_car_data.dart';
import 'package:demo/screens/bet_cart.dart';
import 'package:demo/widgets/bets/bet_cart_bottom.dart';
import 'package:demo/widgets/bets/bet_cart_app.dart';
import 'package:demo/widgets/bets/bet_cart_bottom_alternative.dart';
import 'package:demo/widgets/bets/bet_cart_price_image.dart';
import 'package:flutter/material.dart';

class BetCartSimplified extends StatefulWidget {
  const BetCartSimplified({super.key});

  @override
  State<BetCartSimplified> createState() => _BetCartSimplifiedState();
}

class _BetCartSimplifiedState extends State<BetCartSimplified> {
  var listBets = availableBets;
  String amount = '1000000';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.width * 0.48,
      margin: const EdgeInsets.symmetric(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            BetCartPriceImage(),
            BetCartBottomAlternative(),
          ],
        ),
      ),
    );
  }
}
