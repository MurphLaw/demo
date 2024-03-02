import 'package:demo/screens/bet_screen_pay.dart';
import 'package:demo/screens/success_transaction_screen.dart';
import 'package:demo/widgets/commons/amount_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product_model.dart';

class IncreasePrize extends StatefulWidget {
  const IncreasePrize({super.key});

  @override
  State<IncreasePrize> createState() => _IncreasePrizeState();
}

class _IncreasePrizeState extends State<IncreasePrize> {
  String numbers = '765';
  String numberstwo = '657';
  final GlobalKey<State<AmountTextField>> _fixedAmountKey = GlobalKey();
  final GlobalKey<State<AmountTextField>> _directAmountKey = GlobalKey();

  void _closeModal() {
    Navigator.pop(context);
  }

  void _continue() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: ((context) =>
            BetScreenPay(product: Product(icon: '', name: 'name'))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final overlapingSpace = MediaQuery.of(context).viewInsets.bottom;

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
            width: 70,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: _closeModal,
              alignment: Alignment.centerRight,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 16, 30, overlapingSpace + 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.04,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(131, 208, 245, 1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Aumenta tu',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(45, 46, 135, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' premio',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 195, 255, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Agregale la',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          ' Ñapa',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      clipBehavior: Clip.hardEdge,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Image.asset(
                        'assets/images/napa.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'Juega tus 3 últimos números con las mismas ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'loterías',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: MediaQuery.of(context).size.height * 0.09,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment(0, 0),
                            child: Text(
                              numbers,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          AmountTextField(key: _fixedAmountKey, text: ''),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: MediaQuery.of(context).size.height * 0.09,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment(0, 0),
                            child: Text(
                              numberstwo,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          AmountTextField(key: _directAmountKey, text: ''),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        _continue();
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 70, 255, 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Align(
                          alignment: Alignment(0, 0),
                          child: Text('Agregar a la apuesta',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    InkWell(
                      onTap: _continue,
                      child: const Text(
                        'Cancelar',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
