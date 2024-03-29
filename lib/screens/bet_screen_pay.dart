import 'package:demo/widgets/bets/bet_cart_simplified.dart';

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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const mainAppBar(),
      bottomNavigationBar: const BetCartSimplified(),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 1,
              ),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xF5F5F5),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                     const AccountMoney(),
                      const OneStepToYourLock(),
                      const StepIndicator(count: 2, currentStep: 5),
                      const Subtitle(),
                      const SizedBox(
                        height: 10,
                      ),
                      
                      Container(
                        padding: const EdgeInsets.all(1),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const [
                              ContainerWin(
                                  text1: 'Risaralda      3804',
                                  text2: 'Cauca           1298',
                                  text3: 'Valle             1298',
                                  icon: AssetImage('assets/images/super_chance.png')),
                              ContainerWin(
                                text1: '     3804',
                                text2: '     1298',
                                text3: '     1298',
                                icon: AssetImage('assets/mocks/baloto.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.4,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: const [
                              RounderExpansion(),
                        
                             
                      
                            ],
                          ),
                        ),
                      ),
                      ChoosePaymentMethod(),
                             
                     Container(height: MediaQuery.of(context).size.height *  0.27,
                      
                       child: SingleChildScrollView(

                           child: Column(
                             children: const [
                               PaymentMethod(text1: 'Saldo disponible',text2: '\$24.000',text3: 'assets/images/Grupo 2087.png', width: 30, height: 20,),
                                PaymentMethod(text1: 'Super \$                ',text2: '\$3.100',text3: 'assets/images/benefits.png',color: Colors.blue, width: 30, height: 20,),
                           PaymentMethod(text1: '',text2: '',text3: 'assets/images/superpay.png', width: 90, height: 40,),
                                           
                             ],
                           ),
                         ),
                       ),
                     
                    
                    ],
                  ),
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
