import 'package:flutter/material.dart';


class mainAppBar extends StatelessWidget implements PreferredSizeWidget{
  const mainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset('assets/images/Icono.png'),
        
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(AssetImage('assets/images/user.png'),color: Colors.white,),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_sharp,
              color: Colors.white,
            ),
          ),
        
        ],
        title:   Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // add this
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
            Text('Hola', style: TextStyle(color: Colors.white, fontSize: 14 ),),
            Text('Wilson', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
          ],
        ),
    

        backgroundColor: const Color.fromRGBO(0, 70, 255, 1),
        centerTitle: false,
      );
  }

@override
// TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
}