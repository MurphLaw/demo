import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';
import 'package:flutter/material.dart';

class RounderExpansion extends StatelessWidget {
  const RounderExpansion({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: RoundedExpansionTile(
        leading: Image.asset("assets/images/chance.png"),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        title: Text('Chance',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16)),
        trailing: Icon(
          Icons.keyboard_arrow_down,
          color: const Color.fromRGBO(0, 42, 135, 1),
        ),
        rotateTrailing: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xF9F9F9),
                  width: 2,
                ),
                color: Color(0xF9F9F9),
              ),
              child: Center(
                child: Text(
                  'Widget',
                  //#2B2A2A
                  style: TextStyle(
                      color: Color(0x2B2A2A), fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
