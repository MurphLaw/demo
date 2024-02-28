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
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AmountTextField(text: 'Directo'),
        const SizedBox(width: 20,),
        AmountTextField(text: 'Combinado'),
        
      ],
    );
  }
  
}