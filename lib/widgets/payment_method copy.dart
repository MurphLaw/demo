import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<StatefulWidget> createState() => _paymentMethod();
}

class _paymentMethod extends State<PaymentMethod> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    throw Center(
      child: CheckboxListTile(
        title: Text('Saldo Disponible'),
        value: _isChecked,
        onChanged: (bool? newValue) {
          setState(() {
            _isChecked = newValue;
          });
        },
        activeColor: Colors.indigo,
        checkColor: Colors.white,
        tileColor: Colors.black12,
        subtitle: Text('\$ 24.000'),
        controlAffinity: ListTileControlAffinity.leading,
        tristate: true,
      ),
    );
  }
}
