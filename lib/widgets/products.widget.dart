import 'package:demo/mocks/dumy_data.dart';
import 'package:demo/models/product_model.dart';
import 'package:demo/widgets/product_widget.dart';
import 'package:flutter/cupertino.dart';

class ProductsWidget extends StatefulWidget {
  ProductsWidget({super.key});

  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  var productsList = availableProducts;

  int size = availableProducts.length;

  int firstRowLength = 0;
  int secondRowLength = 0;

  @override
  void initState() {
    if (size.isOdd) {
      firstRowLength = (size / 2).round() + 1;
    } else {
      firstRowLength = (size / 2).round();
    }
    secondRowLength = size - firstRowLength;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),

        itemCount: firstRowLength,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              ProductWidget(product: productsList[index]),
              const SizedBox(height: 10,),
              ProductWidget(product: productsList[index + firstRowLength]),
            ],
          );
        }),
      ),
    );
  }
}
