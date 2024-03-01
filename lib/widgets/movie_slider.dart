import 'package:demo/models/acomulado.dart';
import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  final List<Acomulado> lista;

  const MovieSlider({
    Key? key,
    required this.lista,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 35,
        child: Expanded(
            child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: lista.length,
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
                    image: AssetImage(lista[index].name),
                    width: 51,
                    height: 26,
                  ),
                  Text(
                    lista[index].amount,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  
                  if (lista[index].upDown == true )
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
