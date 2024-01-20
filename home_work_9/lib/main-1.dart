import 'dart:async';

import 'package:flutter/material.dart';

void main() async {
  String text = await startLongProcess();
  print(text);
}

Future<String> startMainProcess() async {
  String text = await startMainProcess();
  return text;
}

Future<String> startLongProcess() async {
  debugPrint('start');
  await Future.delayed(const Duration(seconds: 3));
  debugPrint('finish');
  return 'result';
}

