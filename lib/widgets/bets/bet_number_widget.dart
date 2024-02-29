import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'dart:math';


class BetNumberWidget extends StatefulWidget {
  const BetNumberWidget({super.key});

  @override
  State<BetNumberWidget> createState() {
    return _BetNumberWidgetState();
  }
}

class _BetNumberWidgetState extends State<BetNumberWidget> {
  bool _isFavorite = false;
  String selectedNumber = '';
  final _numberController = TextEditingController();

  void _numberSelected(value) {
    selectedNumber = _numberController.text;
  }

  void _generateRandomNumber(){
    Random random = Random();
    int randomNumber = random.nextInt(10000);
    _numberController.setText(randomNumber.toString().padLeft(4,'0'));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(38, 153, 214, 1),
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: SizedBox(
            height: 30,
            width: 30,
            child: IconButton(
              onPressed: _generateRandomNumber,
              icon: const ImageIcon(
                AssetImage('assets/images/shuffle.png'),
              size: 15),
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.40,
          height: MediaQuery.of(context).size.height * 0.055,
          child: Pinput(
            controller: _numberController,
            onCompleted: _numberSelected,
            inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        IconButton(
          color: Colors.blue,
            alignment: Alignment.centerRight,
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
              });
            },
            icon: _isFavorite
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border)),
      ],
    );
  }

  get betNumber{
    return _numberController.value;
  }
}
