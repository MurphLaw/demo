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
                icon: Icons.drag_handle,
                children: [
              SpeedDialChild(
                child: Image.asset('assets/images/Grupo 6808.png'),
                label: 'Puntos SuperGIROS',
              ),
              SpeedDialChild(
                child: Image.asset('assets/images/Grupo 7810.png'),
                label: 'Transaciones',
              ),
              SpeedDialChild(
                child: Image.asset('assets/images/Grupo 8441.png'),
                label: 'Tu asesora',
              ),
              SpeedDialChild(
                child: Image.asset('assets/images/Grupo 8439.png'),
                label: 'Saca plata',
              ),
              SpeedDialChild(
                child: Image.asset('assets/images/Grupo 8440.png'),
                label: 'Vende',
              ),
              SpeedDialChild(
                child: Image.asset('assets/images/Grupo 8442.png'),
                label: 'Jugar',
              ),
            ], // Puedes agregar hijos si es necesario
            ),
    );
  }
}