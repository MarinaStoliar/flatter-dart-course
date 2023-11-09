import 'package:flutter/material.dart';

void main() {
  int sum = 0;
  for(int i = 1; i <= 45; i++){
    sum += i;
  }
  print('$sum');

  int years = bank();
  print('Сума на рахунку перевищить вдвічі початкового депозиту через $years років');
}

 int bank() {
  double startDeposit = 1000;
  double deposit = startDeposit;
  int years = 0;
  double annual = 1.05;

  while (deposit < startDeposit * 2){
    deposit *= annual;
    years++;
  }
  return years;
}