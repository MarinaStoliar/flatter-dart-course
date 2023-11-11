import 'package:flutter/material.dart';

void parse(String text) {
  int? voltage;
  int? power;
  int? speed;
  int? silentMode;

  const nominalVoltage = 220;
  const nominalPower = 3200;

  text = text.substring(1, text.length - 1);

  List<String> items = text.split(',');

  for (String item in items) {
    List<String> arr = item.split('=');

    String key = arr[0];
    int value =  int.parse(arr[1]);
    // print('$key = $value;');

    switch (key) {
      case 'voltage':
        voltage = value;
        break;
      case 'power':
        power = value;
        break;
      case 'speed':
        speed = value;
        break;
      case 'silent_mode':
        silentMode = value;
        break;
      default:
        print('Невідомий параметр: $key');
        break;
    }
  }

  List<String> toPrint = [];
  if (voltage != null) {
    toPrint.add('${nominalVoltage == voltage ? 'напруга:' : 'Значення змінилося! напруга:'} $voltage');
  }
  if (power != null) {
    toPrint.add('${nominalPower == power ? 'потужність:' : 'Значення змінилося! потужність:'} $power');
  }
  if (speed != null) {
    toPrint.add('швидкість: $speed');
  }
  if (silentMode != null) {
    toPrint.add('режим роботи: $silentMode');
  }

  print(toPrint.join(' | '));
}

void main() {
  List<String> data = [
    '<voltage=220,power=3200,speed=0,silent_mode=0>',
    '<voltage=120,power=800,speed=0,silent_mode=0>',
    '<voltage=0,power=1000,speed=10,silent_mode=1>',
    '<voltage=0,speed=0,silent_mode=1>',
    '<power=3200,speed=0>'
  ];

  for (int i = 0; i < data.length; i++ ) {
    parse(data[i]);
  }

}




