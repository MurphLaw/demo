import 'package:flutter/cupertino.dart';

class BetCartPriceImage extends StatefulWidget {
  const BetCartPriceImage({super.key});

  @override
  State<BetCartPriceImage> createState() => _BetCartPriceImageState();
}

class _BetCartPriceImageState extends State<BetCartPriceImage> {
  String amount = '1000000';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10.0, left: 10.0, right: 10.0, bottom: 0.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        height: MediaQuery.of(context).size.height * 0.08,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: Image.asset(
                'assets/images/priceBackground.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 26.0, top: 10.0, right: 48.0, bottom: 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Podrias ganar ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        '\$ 29.160.000',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "hasta",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        "Antes de retenciones*",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
