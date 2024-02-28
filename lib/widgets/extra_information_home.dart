import 'package:demo/models/extra_information_home_list.dart';
import 'package:flutter/material.dart';

class ExtraInformationHome extends StatelessWidget {
  const ExtraInformationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          alignment: Alignment.bottomCenter,
          height: 150,
          child: Padding(
              padding: const EdgeInsets.all(12), //Tamaño del margen
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.7),
                scrollDirection: Axis.horizontal,
                itemCount: imageExtraInformation.length,
                itemBuilder: (context, count) {
                  return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 200,
                        height: 65,
                        decoration: BoxDecoration(
                            // shape: BoxShape.rectangle, color: Colors.blue)),
                            image: DecorationImage(
                          image: AssetImage(imageExtraInformation[count].image),
                          // fit: BoxFit.cover,
                        )),
                      ));
                },
              ))),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8.0),
            ),
          )
        ],
      )
    ]);
  }
}
