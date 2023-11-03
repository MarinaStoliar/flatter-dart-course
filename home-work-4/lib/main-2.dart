import 'dart:io';
import 'package:flutter/material.dart';

import 'Calculator.dart';

void main() {
  Calculator calc = Calculator();
  calc.isEnabled = true;
  calc.info();
  print(calc.add(5, 2));
  print(calc.mult(5, 3));
  print(calc.div(16, 5));
  print(calc.sub(10, 3));
}

