import 'package:flutter/material.dart';

class CustomAppBar1 extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar1({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(48);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        shape:  const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(0),
        bottomRight: Radius.circular(0),
    )),
      centerTitle: true,
      title: const Text('',style: TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(255, 0, 70, 255),
      toolbarHeight: 48,
      leading: Builder(builder: (BuildContext) {
        return IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back_ios));
      }),
      flexibleSpace: Container(
        width: 27,
        height: 90,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/Icono.png'), alignment: Alignment.bottomCenter)
      )),
    );
  }
}