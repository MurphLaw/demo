import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BetNumberWidget extends StatefulWidget {
  const BetNumberWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BetNumberWidget();
  }
}

class _BetNumberWidget extends State<BetNumberWidget> {
  bool _isFavorite = false;
  var _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(38, 153, 214, 1),
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: IconButton(
            //padding: const EdgeInsets.all(20),
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage('assets/images/shuffle.png'),
            ),
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 0.35,
          child: TextField(
            controller: _numberController,
            maxLength: 4,
            keyboardType: TextInputType.number,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        IconButton(
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
}
