import 'package:demo/widgets/bets/bet_number_widget.dart';
import 'package:flutter/material.dart';

class BetWidget extends StatefulWidget {
  const BetWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BetWidgetState();
  }
}

class _BetWidgetState extends State<BetWidget> {
  int index = 1; //obtener esto de forma dinamica
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
              'Apuesta $index',
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
          ],
        ),
      ),
    );
  }
}
