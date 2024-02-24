import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 // const MyApp({super.key});

  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 20.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
                  style: _sizeTextBlack,
                  maxLength: 50,
                  decoration: InputDecoration(labelText: "Логін"),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),

              Container(
                width: 300,
                padding: EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  style: _sizeTextBlack,
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
                    style: _sizeTextBlack,
                    maxLength: 30,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Поле для підтвердження пароля"
                    ),
                  )
              ),
              ElevatedButton(
                onPressed: (){
                  print("Registration button pressed");
                },
                child: Text("Register"),
              )


            ],
          )
        ),
      ),
    );
  }
}


