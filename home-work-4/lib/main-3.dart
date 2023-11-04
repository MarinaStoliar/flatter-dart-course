import 'dart:io';
import 'package:flutter/material.dart';

import 'Car.dart';

void main() {
  Car car = Car('Mazda', 20, 70);
  car.startEngine();

  double distance = 0.0;

  while (distance < 1200.0) {
     if (car.amountGasOline < car.consumptionGasOline) {
       // якщо бензин закінчується, то дозаправка на 1000 л.
       car.refuel(1000);
       print('Дозаправлено ${car.liter} л.');
     }
     car.toOne();
     distance += 1.0;
     print('Ви проїхали $distance км');
 } print('Поїздка завершена');

}


