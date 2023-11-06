import 'package:flutter/material.dart';

void main() {
  double startDeposit = 1000;
  double deposit = startDeposit;
  int years = 0;
  double annual = 0.05;

  while (deposit < startDeposit * 2){
    deposit *= annual;
    years++;
    print('Your deposit is' + deposit.toStringAsFixed(2));
  }
  print('You reached 2x money after ${years} year(s)');

}


