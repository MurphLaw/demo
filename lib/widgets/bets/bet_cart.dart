import 'package:flutter/material.dart';

class BetCart extends StatelessWidget {
  const BetCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 200,
      margin: const EdgeInsets.symmetric(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: AlignmentDirectional.centerStart,
              width: 390,
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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      'Carrito de compra',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                        print('abre carrito');
                      },
                    ),
                    const Spacer(),
                    IconButton(
                      padding: const EdgeInsets.all(0),
                      icon: const ImageIcon(
                        AssetImage('assets/images/arrowUp.png'),
                      ),
                      color: const Color.fromARGB(255, 0, 70, 255),
                      onPressed: () => print('abre carrito'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( top: 10.0, left: 10.0, right: 10.0, bottom: 0.0),
              child: Container(
                width: 390,
                height: 70,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Image.asset(
                      'assets/images/priceBackground.png',
                      width: 390,
                      fit: BoxFit.fill,
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
                                '\$ 10000000000',
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 10.0),
              child: Column(
                children: [
                  Container(
                    width: 390,
                    height: 37,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "10 Apuestas",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              '\$ 10000000000',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
