import 'package:demo/screens/lotteries_modal.dart';
import 'package:flutter/material.dart';

class PickLottery extends StatefulWidget {
  const PickLottery({super.key});

  @override
  State<PickLottery> createState() => _PickLotteryState();
}

class _PickLotteryState extends State<PickLottery> {
  _openLotteryModal() {
    showModalBottomSheet(
      enableDrag: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      isScrollControlled: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: ((context) => const LotteriesModal()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
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
        const SizedBox(width: 3,),
        Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(3),
            ),
            child:  Align(
              alignment: Alignment.center,
              child: IconButton(
                padding: EdgeInsets.zero,
                  onPressed: _openLotteryModal,
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
            ),
            )
      ],
    );
  }
}
