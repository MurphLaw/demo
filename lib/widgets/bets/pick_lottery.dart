import 'package:demo/screens/lotteries_modal.dart';
import 'package:flutter/material.dart';

class PickLottery extends StatefulWidget {
  const PickLottery({super.key});

  @override
  State<PickLottery> createState() => _PickLotteryState();
}

class _PickLotteryState extends State<PickLottery> {
  _openLotteryModal(){
    showModalBottomSheet(isScrollControlled: true,context: context, builder:((context) => const LotteriesModal()),);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
         InkWell(
          onTap: _openLotteryModal,
          child: const Text(
            'Seleccionar lotería/sorteo',
            style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
          ),
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(3),
          ),
          child: Center(
            child: IconButton(
            onPressed: _openLotteryModal,
            icon: const Icon(Icons.add, color: Colors.white,),
        ),
          ))
      ],
    );
  }
}
