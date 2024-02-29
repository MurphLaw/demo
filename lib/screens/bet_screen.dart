import 'package:demo/widgets/bets/bet_widget.dart';
import 'package:demo/widgets/bets/tittle_chance.dart';
import 'package:demo/widgets/text_write_your_numbers.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../widgets/commons/bet_to_your_luck.dart';
import '../widgets/commons/custom_app_bar_1.dart';
import '../widgets/custom_decorative_2.dart';

class BetScreen extends StatelessWidget {
  BetScreen({Key? key, required this.product}) : super(key: key);

  Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(),
      body: Column(
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
              children: [
                const BetYourLuck(),
                const CustomDecorative2(),
                TitleChance(
                  iconRoot: product.icon,
                  text: product.name,
                ),
                const TextWriteYourNumbers(),
                Expanded(
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            BetWidget(index: index + 1),
                            const SizedBox(
                              height: 5,
                            )
                          ],
                        );
                      })),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
