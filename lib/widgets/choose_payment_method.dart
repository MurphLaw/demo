import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class ChoosePaymentMethod extends StatelessWidget {
  const ChoosePaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              //Seleccionar método de pago
              Expanded(
                  flex: 2,
                  child: Text(
                    'Seleccionar método de pago',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () => showPopover(
                      context: context,
                      bodyBuilder: (context) => _PopUpPaymentMethod(),
                      direction: PopoverDirection.top),
                  child: Icon(Icons.report_outlined, color: Colors.indigo),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//Expanded(child: SizedBox(width: 10, child: Container(decoration: const BoxDecoration(color: Colors.red,)),)),
class _PopUpPaymentMethod extends StatelessWidget {
  const _PopUpPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw Column(
      children: [
        Container(
          //height: 50,
          color: Color(0x83D0F5),
          child: Text('Prueba'),
        )
      ],
    );
  }
}
