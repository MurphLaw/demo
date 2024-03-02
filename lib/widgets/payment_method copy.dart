import 'package:flutter/material.dart';

import 'commons/amount_text_field.dart';

class PaymentMethod extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final Color? color;
  final double? width;
  final double? height;
  const PaymentMethod({super.key, required this.text1, required this.text2, required this.text3,  this.color, this.height, this.width});

  @override
  State<StatefulWidget> createState() => _paymentMethod();
}

class _paymentMethod extends State<PaymentMethod> {
  bool? _isChecked = false;
  String _inputText = '';
  
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(padding: EdgeInsets.all(10),
        child: Row(children: [
          Checkbox(value: _isChecked, onChanged: (bool? value){
            setState(() {
              _isChecked = value!;
            });
          }),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.text1, style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 5,),
          Text(widget.text2, style: TextStyle(
            fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold
          
          ),),
            ],
          ),
          SizedBox(width: 5,),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                //'assets/images/Grupo 2087.png'
                Image.asset(widget.text3, width: widget.width, height: widget.height,color: widget.color),
                
              ],
            )),
            AmountTextField(text: '',)

        ]),),
        
      ],
     );
    
  }
}
