import 'package:demo/widgets/one_step_to_your_luck.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerWin extends StatelessWidget {
  const ContainerWin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

        
        children: [
          Container(
            
            child: Stack(children: [
              Positioned(
                  child: Material(
                child: Container(
                  height: 100,
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
                bottom: -2,
                child: Card(
                  child: Container(
                      height: 80,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/mocks/super_chance.png'),
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
                        Text('Risaralda      3804',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            )),
                        Text('Cauca           1298',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            )),
                        Text('Valle             1298',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            )),
                        MaterialButton(
                          minWidth: 110.0,
                          height: 35.0,
                          onPressed: () {},
                          color: Colors.lightBlue,
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
