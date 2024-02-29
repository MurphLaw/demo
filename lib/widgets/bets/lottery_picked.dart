import 'package:flutter/material.dart';

class LotteryPicked extends StatelessWidget {
  LotteryPicked({super.key, required this.timeOfClose, required this.name});

  String timeOfClose;

  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 195, 255, 1),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Stack(alignment: AlignmentDirectional.center, children: [
            const Image(
              image: AssetImage('assets/mocks/background.png'),
              height: 95,
              width: 95,
            ),
            Column(
              children: [
                const Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  'Hora de cierre',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(timeOfClose, ),
              ],
            )
          ]),
          SizedBox(height: 10,),
          Text(
            name,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white)
          )
        ],
      ),
    );
  }
}
