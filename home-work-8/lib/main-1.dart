import 'package:flutter/material.dart';

void main() {
  List<String> data = [
    "John Jonson, 34 years",
    "Melanie Payne, 10 years",
    "Monica Adamms, 15 years"
  ];

  var regexp = RegExp("Jonson");

  for (String line in data) {
    if (regexp.hasMatch(line)) {
      print('Person found: $line');
    }
  }
}

