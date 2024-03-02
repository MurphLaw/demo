import 'package:demo/widgets/one_step_to_your_luck.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerWin extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final ImageProvider<Object> icon;
  const ContainerWin({super.key, required this.text1, required this.text2, required this.text3, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(

        
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Stack(children: [
              Positioned(
                  child: Material(
                child: Container(
                  height: 90,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
              Positioned(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        '     Juega con',
                        style:
                            TextStyle(fontSize: 10, color: Colors.indigo[900]),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -3,
                child: Card(
                  child: Container(
                      height: 80,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          //AssetImage('assets/images/super_chance.png')
                          image: icon,
                          fit: BoxFit.fill,
                        ),
                      )),
                ),
              ),
              Positioned(
                  left: 80,
                  child: Container(
                    height: 150,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(text1,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            )),
                        Text(text2,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            )),
                        Text(text3,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            )),
                        MaterialButton(
                          minWidth: 110.0,
                          height: 35.0,
                          onPressed: () {},
                          color: Color.fromRGBO(0, 70, 255, 1),
                          child: Text('Jugar',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        '     Juega con',
                        style: TextStyle(fontSize: 10, color: Colors.indigo, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Container(),
              ),
            ]),
          ),
        ]);
  }
}
