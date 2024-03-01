import 'package:demo/widgets/commons/amount_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BetAmount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BetAmountState();
  }
  
}

class _BetAmountState extends State<BetAmount>{
  final GlobalKey<State<AmountTextField>> _fixedAmountKey = GlobalKey();
  final GlobalKey<State<AmountTextField>> _directAmountKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AmountTextField(key: _directAmountKey,text: 'Directo'),
        const SizedBox(width: 20,),
        AmountTextField(key: _fixedAmountKey,text: 'Combinado'),
        
      ],
    );
  }

  
  
}