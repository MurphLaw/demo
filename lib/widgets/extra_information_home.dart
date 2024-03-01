import 'package:demo/models/extra_information_home_list.dart';
import 'package:flutter/material.dart';

class ExtraInformationHome extends StatelessWidget {
  const ExtraInformationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.7),
        scrollDirection: Axis.horizontal,
        itemCount: imageExtraInformation.length,
        itemBuilder: (context, count) {
          return Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                width: 200,
                height: 30,
                decoration: BoxDecoration(
                    // shape: BoxShape.rectangle, color: Colors.blue)),
                    image: DecorationImage(
                  image: AssetImage(imageExtraInformation[count].image),
                  // fit: BoxFit.cover,
                )),
              ));
        },
      ),
    );
  }
}
