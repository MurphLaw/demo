import 'package:demo/mocks/acomulado.dart';
import 'package:demo/models/acomulado.dart';
import 'package:demo/widgets/commons/account_money.dart';
import 'package:demo/widgets/commons/recharges_button.dart';
import 'package:demo/widgets/custom_decorative_4.dart';
import 'package:demo/widgets/custom_multicolor_message.dart';
import 'package:demo/widgets/extra_information_home.dart';
import 'package:demo/widgets/generic_element_bottom_bar.dart';
import 'package:demo/widgets/movie_slider.dart';
import 'package:demo/widgets/commons/main_app_bar.dart';
import 'package:demo/widgets/commons/main_bottom_bar.dart';
import 'package:demo/widgets/products.widget.dart';
import 'package:flutter/material.dart';

import '../widgets/commons/bet_to_your_luck.dart';
import '../widgets/success_transaction_image.dart';

class SuccessTransactionScreen extends StatelessWidget {
  const SuccessTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const mainAppBar(),
      bottomNavigationBar: const MainBotttomBar(),
      floatingActionButton: const RechargesButton(),
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
              children: [
                const CustomMultiColorMessage(text1: '!Transacción ', text2: 'exitosa!', 
                fontText1: 14, fontText2: 14,  
                colorText1: Color.fromARGB(255, 45, 46, 135), colorText2: Color.fromARGB(255,0, 195, 255), 
                marginVertical: 10, marginHorizontal: 0, colorBackground: Color.fromARGB(255,131, 208, 245), 
                containerWidth: 160, containerHeight: 40),
                const SucessTransactionImage(),
                const SizedBox(
                  height: 15,
                ),
                //ProductsWidget(),
                //const ExtraInformationHome(),
                SizedBox(height: MediaQuery.of(context).size.height *0.08 ,)
              ],
            ),
          ))
        ],
      ),
    );
  }
}