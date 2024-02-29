import 'package:flutter/material.dart';

class AmountTextField extends StatelessWidget{

  AmountTextField({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(text, textAlign: TextAlign.left,style: const TextStyle(
                color: Colors.grey,
              ),),
              const SizedBox(height: 8,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )
            ],
          ),
        );
  }
  
}