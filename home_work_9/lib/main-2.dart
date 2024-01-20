import 'package:flutter/material.dart';
import 'dart:async';

void main() async {
  var timer = MyTimer();
  timer.countDown(10).listen((event) {
    print('New count: $event');
  });
}

class MyTimer{

  Stream<int> countDown(int seconds){
    int secondsLeft = seconds;
    var controller = StreamController<int>();

    Timer.periodic(Duration(seconds: 1), (timer) {
      controller.add(secondsLeft);
      if(secondsLeft) {
        secodsLeft--;
      } else {
        timer.cancel();
      }
    });

  }
}
