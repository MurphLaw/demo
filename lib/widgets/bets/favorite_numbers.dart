import 'dart:ui';

import 'package:demo/mocks/dumy_data.dart';
import 'package:demo/widgets/bets/favorite_number_box.dart';
import 'package:flutter/material.dart';

class FavoriteNumbers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteNumbersState();
  }
}

class _FavoriteNumbersState extends State<FavoriteNumbers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Favoritos',
            style: TextStyle(
                color: Color.fromRGBO(45, 46, 135, 1),
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Selecciona los números favoritos que quieras agregar a tu apuesta',
            style: TextStyle(fontSize: 17),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: ((context, index) =>
                  FavoriteNumberBox(number: favoriteNumbersData[index])),
            ),
          )
        ],
      ),
    );
  }
}
