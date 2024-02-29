import 'package:demo/models/bet_car_model.dart';

const List<String> bets = ['assets/images/betIcon1.png', 'assets/images/betIcon2.png', 'assets/images/betIcon3.png'];
BetCar try1 = BetCar(betNumber: '1367', mixValue: 5000, directValue: 7600, iconBets: bets);
var availableBets = [
  BetCar(betNumber: '1367', mixValue: 5000, directValue: 7600, iconBets: bets),
  BetCar(betNumber: '8025', mixValue: 3000, directValue: 0, iconBets: bets),
  BetCar(betNumber: '419', mixValue: 0, directValue: 5000, iconBets: bets)
];