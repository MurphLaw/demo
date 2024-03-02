import 'package:flutter/material.dart';
import '../theme/theme_chance.dart';

class PlayLoteries extends StatelessWidget {
  final String text1;
  final String text2;
  final String iconRoot;
  final double elevation;

  const PlayLoteries(
      {super.key,
      required this.text1,
      required this.text2,
      required this.iconRoot,
      required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: elevation,
      child: Column(
        children: [
          Row(
            children: [
              ImageIcon(
                AssetImage(
                    iconRoot), //const ImageIcon(AssetImage("assets/Grupo9179.png")
              ),
              SizedBox(
                width: ThemeChance.widthWidgetIcon1,
                height: ThemeChance.heightWidgetIcon1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: RichText(
                        text: TextSpan(
                          text: text1,
                          style: const TextStyle(
                              fontSize: ThemeChance.fontSizeWidgetIcon1,
                              color: ThemeChance.letterColor1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: text2,
                        style: const TextStyle(
                            fontSize: ThemeChance.fontSizeWidgetIcon1,
                            color: ThemeChance.letterColor1,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
