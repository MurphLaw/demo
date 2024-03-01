import 'package:flutter/material.dart';

class AccumulationGemasModal {
  static openModal(context) {
    showModalBottomSheet(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(25),
      )),
      isScrollControlled: false,
      context: context,
      builder: (context) {
        return SizedBox(
          height: 650,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  alignment: Alignment.centerRight,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Title(
                      color: const Color.fromRGBO(11, 35, 131, 1),
                      child: const Text(
                        'Con esta compra\n     acumulaste',
                        style: TextStyle(
                            color: Color.fromRGBO(11, 35, 131, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    width: 158,
                    height: 57,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(38, 153, 214, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          '3,13 \n Diamantes',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Image.asset(
                    'assets/images/carrito-de-gemas_fondo-blanco.gif',
                    width: 241,
                    height: 241,
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 70, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Entendido',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
