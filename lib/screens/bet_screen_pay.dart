import 'package:demo/widgets/play_loteries.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

import '../widgets/choose_payment_method.dart';
import '../widgets/commons/account_money.dart';
import '../widgets/commons/main_app_bar.dart';
import '../widgets/container_win.dart';

import '../widgets/one_step_to_your_luck.dart';
import '../widgets/payment_method copy.dart';
import '../widgets/rounded_expasion_title.dart';
import '../widgets/step_indicator_bar.dart';
import '../widgets/subtitle.dart';

class BetScreenPay extends StatelessWidget {
  BetScreenPay({Key? key, required this.product}) : super(key: key);

  Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const mainAppBar(),
      // floatingActionButton: FloatingActionButton.large(
      //  onPressed: () {},
      // clipBehavior: Clip.hardEdge,
      //  backgroundColor:const Color.fromRGBO(0, 70, 255, 1),
      // child: Column(
      //   children: [
      //       const SizedBox(height: 18,),
      //Image.asset('assets/images/dollar.png', color: Colors.white,),
      //const Text('Recarga',style:  TextStyle(color: Colors.white),),
      //   ],
      //    )
      //  ),
      //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          const SizedBox(
            height: 1,
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              color: Color(0xF5F5F5),
            ),
            child:  Column(
              children: const [
                SizedBox(
                  height: 10,
                ),
                AccountMoney(),
                OneStepToYourLock(),
                StepIndicator(count: 2, currentStep: 5),
                //PlayLoteries(text1: 'Risaralda 3604',text2: 'Cauca 1298',elevation: 10,iconRoot: 'assets/mocks/super_chance.png' ,),
                Subtitle(),
                ContainerWin(),
                RounderExpansion(),
                ChoosePaymentMethod(),
                //  PaymentMethod(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
