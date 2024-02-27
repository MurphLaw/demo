import 'package:flutter/material.dart';
class CustomDecorative2 extends StatelessWidget {
  const CustomDecorative2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            customcard(),
            customcard(),
            customcard(),
          ],
        ),
      ],
    );
  }
}

class customcard extends StatelessWidget {
  const customcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
    margin: EdgeInsets.zero,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    elevation: 10,
    child: Padding(
      padding: const EdgeInsets.all(1),
      child: SizedBox(
        width: 180,
        height: 50,
        child: ListTile(      
          visualDensity: VisualDensity.standard,
          leading: const ImageIcon(AssetImage("assets/Grupo9179.png"),//const ImageIcon(AssetImage("assets/Grupo9179.png")
          color: Color.fromARGB(255, 0, 42, 135), size: 30,),
          title: Column(
            children: [
              Padding(padding: const EdgeInsets.all(0),
              child: RichText(
                textAlign: TextAlign.left,
                text: const TextSpan(        
                  text: 'Te', 
                  style: TextStyle(
                  fontSize: 18, 
                  color: Color.fromARGB(255, 43, 42, 42), 
                  fontWeight: FontWeight.bold),),),),
              RichText(text: const TextSpan(
                text: 'Ayudamos', 
                style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 43, 42, 42), fontWeight: FontWeight.bold),),)
            ],),
          ),
      ),
    ),
    );
  }
}