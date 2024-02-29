import 'package:demo/screens/bet_screen.dart';
import 'package:demo/screens/main_bet_screen.dart';
import 'package:demo/widgets/commons/generic_product_card.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../screens/bet_cart.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({super.key, required this.product});
  Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: ((context) {
              return BetScreen(
                product: product,
              );
            }),
          ),
        );
      }),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(10),
              color: const Color.fromRGBO(245, 245, 245, 1),
            ),
            child: GenericProductCard(assetIcon: product.icon, name:  product.name,)
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
