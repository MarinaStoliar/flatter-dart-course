import 'package:flutter/material.dart';
import 'human.dart';
import 'document.dart';

void main() {
  var document = SignDocument();

  document.sign = Worker();
  document.printDocument();
}