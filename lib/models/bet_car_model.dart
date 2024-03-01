import 'package:demo/models/lottery_model.dart';

class BetCar {

  BetCar({required this.betNumber, required this.mixValue, 
  required this.directValue, required this.iconBets, this.lotteries});

  String betNumber;
  double mixValue;
  double directValue;
  List<String> iconBets;
  List<Lottery>? lotteries;

}