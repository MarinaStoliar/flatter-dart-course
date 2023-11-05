import 'package:flutter/material.dart';

void main() {
  int age = 80;
  bool payment = true; // якщо оплатив то true;
  bool pension = true; // якщо є посвідчення то true;

  bool isAllowed = false;
  const young = 18;
  const adult = 60;
  String who = '';

  if (age <= young) {
    who = 'Дитина';
    isAllowed = true;
  } else if (age > young && age <= adult) {
    who = 'Дорослий';
    isAllowed = payment;
    if (payment) {
      print('Оплачено');
    }
  } else if (age > adult) {
    who = 'Пенсіонер';
    isAllowed = pension;
    if (pension){
      print('Посвідчення наявне');
    }
  }
  print('$who, ${isAllowed ? "дозволено" : "не дозволено"}');

}

