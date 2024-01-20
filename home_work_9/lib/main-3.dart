import 'package:flutter/material.dart';

Future<int> goFunc() {
  Future<int> result = Future.delayed(Duration(seconds:3)).then((value) => 20);
  return result;
}

void main() {
  print(10);
  goFunc().then((value) => print(value));
  print(30);
}

