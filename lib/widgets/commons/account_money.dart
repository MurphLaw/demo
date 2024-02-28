import 'package:flutter/material.dart';

class AccountMoney extends StatelessWidget {
  const AccountMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 350,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 70, 255, 1),
        borderRadius: BorderRadiusDirectional.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/images/eye.png'),
          const SizedBox(
            width: 16,
          ),
          const Text(
            'Saldo ',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            '\$60.000',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            width: 70,
          ),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                
                padding: EdgeInsets.only(left: 25),
                width: 100.0,
                height: 22.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadiusDirectional.circular(10),
                ),
                child: const Text(
                  '3.100',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 27.0,
                height: 27.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Image.asset('assets/images/points.png'),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
