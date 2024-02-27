import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({super.key, required this.product});
  Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(10),
            color: const Color.fromRGBO(245, 245, 245, 1),
          ),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                const Image(
                  image: AssetImage('assets/mocks/background.png'),
                  height: 80,
                  width: 80,
                ),
                Image(
                  image: AssetImage(product.icon),
                  height: 60,
                  width: 60,
                ),
              ]),
              Text(
                product.name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        )
      ],
    );
  }
}
