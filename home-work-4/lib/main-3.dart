import 'dart:io';
import 'package:flutter/material.dart';

import 'Car.dart';

void main() {
  Car car = Car('Mazda', 0.1, 70);
  // car.startEngine();

  double distance = 0.0;
  double refuelDistance = 550;

  while (distance < 1200.0) {
    if (car.toOne()){
      distance += 1.0;
      print('Ви проїхали $distance км');
      if (distance % refuelDistance == 0 ) {
        car.refuel();
      }
    } else {
      print('Поїздка не почалась');
      break;
    }
  }
 print('Поїздка завершена');

}


