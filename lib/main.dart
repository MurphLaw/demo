import 'package:demo/screens/main_bet_screen.dart';
import 'package:demo/screens/bet_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor:const Color.fromARGB(44, 85, 76, 217)
      ),
    ),
    home: const MainBetScreen(),
    );
  }
  
}