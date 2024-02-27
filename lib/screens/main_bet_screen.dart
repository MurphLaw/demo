import 'package:demo/mocks/acomulado.dart';
import 'package:demo/models/acomulado.dart';
import 'package:demo/widgets/account_money.dart';
import 'package:demo/widgets/custom_decorative_4.dart';
import 'package:demo/widgets/generic_element_bottom_bar.dart';
import 'package:demo/widgets/main_app_bar.dart';
import 'package:demo/widgets/main_bottom_bar.dart';
import 'package:demo/widgets/movie_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/bet_to_your_luck.dart';

class MainBetScreen extends StatelessWidget {

  final total = ['Hola', 'mundo', 'soy'];
  final logos = ['assets/images/Grupo 8059.png', 'assets/images/Grupo 8068.png', 'assets/images/Grupo 8053.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const mainAppBar(),
      bottomNavigationBar: MainBotttomBar(),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        clipBehavior: Clip.hardEdge,
        backgroundColor:const Color.fromRGBO(0, 70, 255, 1),
        child: Column(
          children: [
              const SizedBox(
                height: 18,
              ),
              Image.asset(
                'assets/images/dollar.png',
                color: Colors.white,
              ),
              const Text(
                'Recarga',
                style: TextStyle(color: Colors.white),
              ),
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
          MovieSlider(lista: lista, 
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: const [
                BetYourLuck(),
                CustomDecorative4()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
