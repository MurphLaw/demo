import 'package:demo/widgets/bets/bet_amount.widget.dart';
import 'package:demo/widgets/bets/bet_number_widget.dart';
import 'package:demo/widgets/bets/pick_lottery.dart';
import 'package:flutter/material.dart';

class BetWidget extends StatefulWidget {
  BetWidget({super.key, required this.index});

  int index;
  @override
  State<StatefulWidget> createState() {
    return _BetWidgetState();
  }
}

class _BetWidgetState extends State<BetWidget> {
  late int _index;
  @override
  void initState() {
    _index = widget.index; 
    super.initState();
  }
  //obtener esto de forma dinamica
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      borderRadius:  BorderRadiusDirectional.circular(15),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.85 ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Apuesta $_index',
              textAlign: TextAlign.start,
              style: const TextStyle(
                  color: Color.fromRGBO(45, 46, 130, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            const Divider(
              color: Colors.grey
            ),
            const BetNumberWidget(),
            const SizedBox(height: 10,),
            BetAmount(),
            const SizedBox(height: 10,),
            const PickLottery(),

          ],
        ),
      ),
    );
  }
}
