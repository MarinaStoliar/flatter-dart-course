import 'dart:io';
import 'package:flutter/material.dart';

import 'Car.dart';

void main() {
  Car car = Car('Mazda', 0.1, 70);
  car.startEngine();

  double distance = 0.0;
  double refuelDistance = 500.0;

  while (distance < 1200.0) {
     car.toOne();
     distance += 1.0;
     print('Ви проїхали $distance км');

     if (distance == refuelDistance ) {
       // кожні 50 км дозаправка
       car.refuel(60);
       print('Дозаправлено ${car.liter} л.');
       refuelDistance += 500.0;
     }

 } print('Поїздка завершена');

}


