import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
/*
  var inputValue = 10;
  var resultValue = 0;
  var scalingValue = 100;

  try {
    resultValue = scalingValue ~/ inputValue;
  } catch(e) {
    print('Помилка. Ділення на 0 заборонене');
    // print(e);
  } finally{ print(resultValue);}
*/


  var calc = CalculatorDivision();
  print(calc.ordinary(25, 0));
/*  print(calc.division(11, 3));
  print(calc.integer(11, 2));*/

}

class CalculatorDivision {

  double? ordinary(double value1, double value2) {
    try {
      return value1 / value2;
    } catch (e) {
      debugPrint('Помилка $e. Ділення на 0 заборонене');
      return 0;
    }
  }

  int division(int value1, int value2) {
    return value1 ~/ value2;
  }

  double integer(double value1, double value2) {
    return value1 % value2;
  }
}







/*Зробити програму для ділення чисел: звичайного, цілочисельного та розрахунок залишку від
ділення. Результат виводиться у консоль. Необхідно за допомогою try-catch обробити ситуацію
поділу на нуль

*/


