import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';
// import 'package:characters/characters.dart';
// import 'package:collection/collection.dart';

import 'string_to_doble.dart';


/* №1 */
// void main() {
//   var inputValue = 0;
//   var resultValue = 0;
//   var scalingValue = 100;
//
//   try {
//     resultValue = (scalingValue / inputValue).toInt();
//   } catch (e) {
//     print('1Помилка під час звичайного ділення: $e');
//   }
//
//   try {
//     resultValue = scalingValue ~/ inputValue;
//   } catch (e) {
//     print('2Помилка під час цілочисельного ділення: $e');
//   }
//
//   try {
//     resultValue = scalingValue % inputValue;
//   } catch (e) {
//     print('3`Помилка під час розрахунку залишку: $e');
//   }
// }

/* №2 */
// void main() {
//   var calc = CalculatorDivision();
//   print(calc.ordinary(25, 0));
//   print(calc.division(11, 3));
//   print(calc.integer(11, 3));
//
// }
//
// class CalculatorDivision {
//   double? ordinary(var value1, var value2) {
//     try {
//       return (value1 / value2).toDouble();
//     } catch(e) {
//       print('1. Помилка під час звичайного ділення:$e');
//       return null;
//     }
//   }
//
//   int division(int value1, int value2) {
//     try {
//       if (value2 == 0) {
//         throw ArgumentError('Ділення на 0 заборонене');
//       }
//       return value1 ~/ value2;
//     } catch(e) {
//       print('2. Помилка під час цілочисельного ділення: $e');
//       // print(e);
//       return 0;
//     }
//   }
//
//   num integer(int value1, int value2) {
//     try {
//       if (value2 == 0) {
//         throw ArgumentError('Ділення на 0 заборонене');
//       }
//       return value1 % value2;
//     } catch(e) {
//       print('3.Помилка під час розрахунку залишку: $e');
//       return 0 ;
//     }
//   }
// }

/* №3 */
// double div(String a, String b) => int.parse(a) / int.parse(b);
//
// void main() async {
//   try {
//     final a = div("5", "ноль");
//   } catch (error) {
//     print(error);
//   }
// }


/* №4 */

class IncorectIntString {
  final String incorectString;

  IncorectIntString(this.incorectString);
  @override
  String toString() {
    return "Неможна перетворити рядок в int";
  }
}

class DivisionByZero {
  @override
    String toString() {
      return "Відбулося ділення на 0";
  }
}


double div(String a, String b) {
  final aa = int.tryParse(a);
  final bb = int.tryParse(b);

  if (aa == null) {
    throw IncorectIntString(a);
  }

  if (bb == null) {
    throw IncorectIntString(b);
  }

  if (bb == 0) {
    throw DivisionByZero();
  }

  return aa / bb;
}

void main() async {
  try {
    print("aaaaaa");
    final a = div("5", "0");
    final b = a + 6;
    print(b);
} on DivisionByZero catch (error) {
    print(error);
  } on IncorectIntString catch (error) {
    print(error);
  } catch (error) {
    print(error);
  }
}




