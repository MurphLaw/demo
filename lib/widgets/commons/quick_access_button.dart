import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class QuickAccessButton extends StatelessWidget {
  const QuickAccessButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.3,
      right: MediaQuery.of(context).size.width * 0.09,
      child: SpeedDial(
        foregroundColor: Colors.white,
        icon: Icons.more_vert,
        backgroundColor: const Color.fromRGBO(0, 195, 255, 1),
        children: [
          SpeedDialChild(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            child: Image.asset('assets/images/Grupo 6808.png'),
            label: 'Puntos SuperGIROS',
          ),
          SpeedDialChild(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            child: Image.asset('assets/images/Grupo 7810.png'),
            label: 'Transaciones',
          ),
          SpeedDialChild(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            child: Image.asset('assets/images/Grupo 8441.png'),
            label: 'Tu asesora',
          ),
          SpeedDialChild(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            child: Image.asset('assets/images/Grupo 8439.png'),
            label: 'Saca plata',
          ),
          SpeedDialChild(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            child: Image.asset('assets/images/Grupo 8440.png'),
            label: 'Vende',
          ),
          SpeedDialChild(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            child: Image.asset('assets/images/Grupo 8442.png'),
            label: 'Jugar',
          ),
        ], // Puedes agregar hijos si es necesario
      ),
    );
  }
}
