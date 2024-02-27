import 'package:demo/widgets/account_money.dart';
import 'package:demo/widgets/custom_decorative_4.dart';
import 'package:demo/widgets/generic_element_bottom_bar.dart';
import 'package:demo/widgets/main_app_bar.dart';
import 'package:demo/widgets/main_bottom_bar.dart';
import 'package:demo/widgets/products.widget.dart';
import 'package:flutter/material.dart';

import '../widgets/bet_to_your_luck.dart';

class MainBetScreen extends StatelessWidget {
  const MainBetScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const mainAppBar(),
      bottomNavigationBar: const MainBotttomBar(),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        clipBehavior: Clip.hardEdge,
        backgroundColor:const Color.fromRGBO(0, 70, 255, 1),
        child: Column(
          children: [
            const SizedBox(height: 18,),
            Image.asset('assets/images/dollar.png', color: Colors.white,),
            const Text('Recarga',style:  TextStyle(color: Colors.white),),
        ],
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          const AccountMoney(),
          const SizedBox(
            height: 8,
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children:  [
                const BetYourLuck(),
                const CustomDecorative4(),
                Container(child: ProductsWidget())
              ],
            ),
          ))
        ],
      ),
    );
  }
}
