import 'package:flutter/cupertino.dart';

class GenericProductCard extends StatelessWidget{

  String assetIcon;

  String name;

  GenericProductCard({super.key, required this.assetIcon, required this.name});


  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Stack(alignment: AlignmentDirectional.center, children: [
                  const Image(
                    image: AssetImage('assets/mocks/background.png'),
                    height: 80,
                    width: 80,
                  ),
                  Image(
                    image: AssetImage(assetIcon),
                    height: 60,
                    width: 60,
                  ),
                ]),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            );
  }

}