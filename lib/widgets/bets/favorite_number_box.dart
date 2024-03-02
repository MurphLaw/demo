import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

class FavoriteNumberBox extends StatefulWidget {
  FavoriteNumberBox({super.key, required this.number});

  String number;
  @override
  State<StatefulWidget> createState() {
    return _FavoriteNumberBoxState();
  }
}

class _FavoriteNumberBoxState extends State<FavoriteNumberBox> {
  bool? checkBoxValue = false;
  final _numberController = TextEditingController();
  @override
  void initState() {
    _numberController.setText(widget.number);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(0),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Checkbox(
            value: checkBoxValue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
            onChanged: ((value) {
              setState(() {
                checkBoxValue = value;
              });
            }),
          ),
          const SizedBox(
            width: 30,
          ),
          Pinput(
            controller: _numberController,
            enabled: false,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ],
      ),
    );
  }
}
