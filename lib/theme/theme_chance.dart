import 'package:flutter/material.dart';

class ThemeChance {

   //4to Icono de arriba a abajo (Screen1 de Flujo Apuestas-Chance).
  static const Color iconsColor1Home = Color.fromARGB(255, 0, 42, 135);
  static const Color letterColor1Home = Color.fromARGB(255, 42, 42, 1);
  static const double sizeIcon1Home = 40.0;
  static const double widthWidgetIcon1Home = 100.0;
  static const double heightWidgetIcon1Home = 40.0;
  static const double fontSizeWidgetIcon1Home = 14.0;

  //1er Icono de arriba a abajo (Screen2 de Flujo Apuestas-Chance).
  static const Color iconsColor1 = Color.fromARGB(255, 0, 42, 135);
  static const Color letterColor1 = Color.fromARGB(255, 43, 42, 42);
  static const double sizeIcon1 = 30.0;
  static const double widthWidgetIcon1 = 80.0;
  static const double heightWidgetIcon1 = 50.0;
  static const double fontSizeWidgetIcon1 = 14.0;









  //Esto es del curso, pude ser reutilizable
  static const Color primary = Colors.orange;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
        primaryColor: primary,
        appBarTheme: const AppBarTheme(
          color: Colors.red,
          elevation: 0
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary)
        )
      );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        primaryColor: primary,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          color: Colors.red,
          elevation: 0
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary)
        )
      );

}