import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final double bottomLeftRadius;
  final double bottomRightRadius;
   const CustomAppBar({super.key, required this.title, required this.backgroundColor,required this.textColor, required this.height,required this.bottomLeftRadius,required this.bottomRightRadius,});
  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(bottomLeftRadius),
        bottomRight: Radius.circular(bottomRightRadius),
    )),
      centerTitle: true,
      title: Text(title,style: TextStyle(color: textColor),),
      backgroundColor: backgroundColor,
      toolbarHeight: height,
      leading: Builder(builder: (BuildContext) {
        return IconButton(onPressed: () => print('hola'), icon: const Icon(Icons.arrow_back_ios));
      }),
      flexibleSpace: Container(
        width: 27,
        height: 90,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Grupo2083.png'), alignment: Alignment.bottomCenter)
      )),
    );
  }
}