import 'package:flutter/material.dart';

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
    final a = div("10", "0");
    print(a);
  } catch (error) {
    print(error);
  }
}




