import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  final List<String> total;
  final List<String> logos;
  final bool arrow;

  const MovieSlider({
    Key? key,
    required this.total,
    required this.arrow, 
    required this.logos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 35,
        child: Expanded(
            child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: total.length,
          itemBuilder: (context, index) {
            return Container(
              width: 212,
              height: 32,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromRGBO(246, 249, 251, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FadeInImage(
                    placeholder: AssetImage('assets/no-image.jpg'),
                    image: AssetImage(logos[index]),
                    width: 51,
                    height: 26,
                  ),
                  Text(
                    total[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  const Icon(
                    Icons.arrow_upward_rounded,
                    color: Color.fromRGBO(105, 223, 0, 1),
                  ),
                ],
              ),
            );
          },
        )));
  }
}
