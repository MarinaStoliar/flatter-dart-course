import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void printFirst() {
    print("Registration button pressed");
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: Text(
                  "SuperTech",
                  textAlign: TextAlign.center
                )
              ),
              Container(
                width: 300,
                child: TextFormField(
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  maxLength: 50,
                  decoration: InputDecoration(labelText: "Логін"),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Container(
                width: 300,
                padding: EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  maxLength: 30,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Пароль"
                  ),
                )
              ),
              Container(
                  width: 300,
                  padding: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                    maxLength: 30,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Підтвердження паролю"
                    ),
                  )
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  overlayColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                onPressed: printFirst,
                child: Text("Register"),
              ),
            ],
          )
        ),
      ),
    );
  }
}


