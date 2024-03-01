import 'package:demo/screens/main_bet_screen.dart';
import 'package:demo/widgets/bet_car_resume_widget.dart';
import 'package:demo/widgets/commons/account_money.dart';
import 'package:demo/widgets/commons/recharges_button.dart';
import 'package:demo/widgets/custom_multicolor_message.dart';
import 'package:demo/widgets/commons/main_app_bar.dart';
import 'package:demo/widgets/commons/main_bottom_bar.dart';
import 'package:demo/widgets/sucessful_bet_total.dart';
import 'package:flutter/material.dart';

import '../models/bet_car_model.dart';
import '../widgets/bet_car_widget.dart';
import '../widgets/success_transaction_image.dart';

class SuccessTransactionScreen extends StatelessWidget {
  List<BetCar> betCarListModel;

  SuccessTransactionScreen({Key? key, required this.betCarListModel})
      : super(key: key);

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
                 CustomMultiColorMessage(
                    text1: '!Transacción ',
                    text2: 'exitosa!',
                    fontText1: 14,
                    fontText2: 14,
                    colorText1:const Color.fromARGB(255, 45, 46, 135),
                    colorText2:const Color.fromARGB(255, 0, 195, 255),
                    marginVertical: 10,
                    marginHorizontal: 0,
                    colorBackground:const Color.fromARGB(255, 131, 208, 245).withOpacity(0.26),
                    containerWidth: 160,
                    containerHeight: 40),
                const SucessTransactionImage(),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: betCarListModel.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: ((context, index) {
                      return BetCarResumeWidget(
                          betCarModel: betCarListModel[index]);
                    }),
                  ),
                ),
                SuccessBetTotal(bets: betCarListModel),
                InkWell(
                  onTap: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) => const MainBetScreen()),
                      ),
                    );
                  }),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 70, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                      'Volver a apuestas',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ),
                ),
                //BetCarResumeWidget(betCarModel: betCarModel),
                //ProductsWidget(),
                //const ExtraInformationHome(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
