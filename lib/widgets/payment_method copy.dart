import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

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
          Text('Saldo disponible', style: TextStyle(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 5,),
          Text('\$24.000', style: TextStyle(
            fontSize: 10, color: Colors.blue, fontWeight: FontWeight.bold
          ),)
        ]),),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(Icons.donut_large),
              SizedBox(width: 10,),
              Expanded(child: TextField(keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '\$0',
              ),
              onChanged: (text){
                setState(() {
                  _inputText = text;
                });
              },))
            ],
          ),
        )
      ],
     );
    
  }
}
