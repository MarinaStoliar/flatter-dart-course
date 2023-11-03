// 1
void main() {
  print("Hello Flutter");
}

// 2

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            '''
   /\\_/\\
  ( o.o )
   > ^ <
     | | |
            ''',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}

// 3

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello Flutter',
            style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

