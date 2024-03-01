import 'package:demo/mocks/bet_car_data.dart';
import 'package:demo/screens/bet_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BetCartApp extends StatefulWidget {
  const BetCartApp({super.key});

  @override
  State<BetCartApp> createState() => _BetCartAppState();
}

class _BetCartAppState extends State<BetCartApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      width: MediaQuery.of(context).size.width * 0.90,
      height: 38,
      // color: Colors.white,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 100, 98, 98),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Row(
          children: [
            const SizedBox(
              width: 6,
            ),
            const Text(
              'Carrito de compra',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 6,
            ),
            IconButton(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(0),
              icon: const ImageIcon(
                AssetImage('assets/images/cartIcon.png'),
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) {
                      return BetCarScreen(
                        betCarListModel: availableBets,
                      );
                    }),
                  ),
                );
              },
            ),
            const Spacer(),
            IconButton(
              padding: const EdgeInsets.all(0),
              icon: const ImageIcon(
                AssetImage('assets/images/arrowUp.png'),
              ),
              color: const Color.fromARGB(255, 0, 70, 255),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) {
                    return BetCarScreen(
                      betCarListModel: availableBets,
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
