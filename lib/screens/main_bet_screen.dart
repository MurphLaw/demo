import 'package:demo/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';

class MainBetScreen extends StatelessWidget {
  const MainBetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: mainAppBar(),
        
      body: Text('Soy un texto'),
    );
  }
}
