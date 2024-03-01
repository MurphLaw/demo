import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AmountTextField extends StatefulWidget {
  AmountTextField({super.key, required this.text});
  String text;

  @override
  State<AmountTextField> createState() => _AmountTextFieldState();
}

class _AmountTextFieldState extends State<AmountTextField> {
  late String amount;

  var _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textAlign: TextAlign.end,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              prefix: const Text('\$'),
              isDense: true,
              prefixIconConstraints:
                  const BoxConstraints(minWidth: 0, minHeight: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            controller: _amountController,
            onSubmitted: (value) {
              amount = value;
            },
            onEditingComplete: () {
              amount = _amountController.text;
            },
          )
        ],
      ),
    );
  }

  String get amountFromTextField {
    return amount;
  }
}
