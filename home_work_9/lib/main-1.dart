import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TimerScreen(),
    );
  }
}

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int seconds = 0;
  bool isRunning = false;
  bool isPaused = false;
  late Timer timer;

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (!isPaused) {
        setState(() {
          seconds++;
        });
      }
    });
  }

  void pauseTimer() {
    setState(() {
      isPaused = true;
    });
  }

  void resumeTimer() {
    setState(() {
      isPaused = false;
    });
  }

  void resetTimer() {
    timer.cancel();
    setState(() {
      seconds = 0;
      isRunning = false;
      isPaused = false;
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              formatTime(seconds),
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (!isRunning) {
                      startTimer();
                      setState(() {
                        isRunning = true;
                      });
                    }
                  },
                  child: Text('Start'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    if (isRunning) {
                      if (isPaused) {
                        resumeTimer();
                      } else {
                        pauseTimer();
                      }
                    }
                  },
                  child: Text(isPaused ? 'Resume' : 'Pause'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    resetTimer();
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
