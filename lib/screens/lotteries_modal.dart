import 'package:demo/enums/lottery_periods.dart';
import 'package:demo/mocks/dumy_data.dart';
import 'package:demo/models/lottery_model.dart';
import 'package:demo/widgets/commons/generic_product_card.dart';
import 'package:flutter/material.dart';

class LotteriesModal extends StatefulWidget {
  const LotteriesModal({super.key});

  @override
  State<LotteriesModal> createState() => _LotteriesModalState();
}

class _LotteriesModalState extends State<LotteriesModal> {
  var foundedLotteries =
      availableLotteries; //this will chance onces we have a way to obtain the lotteries from CODESA

  Widget getCardForTime(LotteryPeriod lotteryPeriod) {
    bool isActive = false;
    Widget content = const SizedBox();
    switch (lotteryPeriod) {
      case LotteryPeriod.morning:
        isActive = false;
        var applicableLotteries = [foundedLotteries[0], foundedLotteries[1]];
        content = getRowCards(applicableLotteries, isActive);
        break;
      case LotteryPeriod.afternoon:
        isActive = true;
        var applicableLotteries = [foundedLotteries[2], foundedLotteries[3]];
        content = getRowCards(applicableLotteries, isActive);
        break;
      case LotteryPeriod.night:
        isActive = true;
        var applicableLotteries = [foundedLotteries[4]];
        content = getRowCards(applicableLotteries, isActive);
        break;
    }
    return content;
  }

  Row getRowCards(var lotteries, bool isActive) {
    return Row(children: [
      for (Lottery lottery in lotteries)
        InkWell(
            onTap: () {
              if (isActive) {
              } else {
                _showInactiveLotteryError();
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(245, 245, 245, 1),
                ),
                child: Opacity(
                  opacity: isActive ? 1 : 0.3,
                  child: GenericProductCard(
                      assetIcon: lottery.icon, name: lottery.name),
                ),
              ),
            )),
    ]);
  }

  void _showInactiveLotteryError() {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(behavior: SnackBarBehavior.floating, content: Text('AAAAAAAA')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final overlapingSpace = MediaQuery.of(context).viewInsets.bottom;

    return LayoutBuilder(builder: ((ctx, constrains) {
      final width = constrains.maxWidth;
      return SizedBox(
        height: MediaQuery.of(ctx).size.height * 0.8,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 16, 30, overlapingSpace + 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Loterías y sorteos',
                  style: TextStyle(
                      color: Color.fromRGBO(45, 46, 135, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Selecciona las loterías o sorteos para tu apuesta.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 15,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                          text: 'Juega en la mañana ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '(12:01 am - 12:00pm)',
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                getCardForTime(LotteryPeriod.morning),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                          text: 'Juega en la tarde ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '(12:01 pm - 6:00pm)',
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                getCardForTime(LotteryPeriod.afternoon),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                          text: 'Juega en la noche ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '(6:01 pm - 12:00am)',
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                getCardForTime(LotteryPeriod.night),
              ],
            ),
          ),
        ),
      );
    }));
  }
}
