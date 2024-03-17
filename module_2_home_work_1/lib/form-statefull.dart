import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ super.key });

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    final TextEditingController loginController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();

    // властивість
    bool get canContinue {
      return loginController.text.isNotEmpty && passwordController.text.isNotEmpty
          && confirmPasswordController.text.isNotEmpty
          && passwordController.text == confirmPasswordController.text;
    }

    // функція
    bool passwordIsNotEmpty() {
      return passwordController.text.isNotEmpty;
    }

    void printFirst() {
      print("Registration button pressed ${loginController.text} and ${passwordController.text}");
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
                    controller: loginController,
                    onChanged: (value) => setState(() {}),
                  ),
                ),
                Container(
                  width: 300,
                  padding: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                    maxLength: 10,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Пароль"
                    ),
                    controller: passwordController,
                    onChanged: (value) => setState(() {}),
                  )
                ),
                Container(
                    width: 300,
                    padding: EdgeInsets.only(top: 10.0),
                    child: TextFormField(
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                      maxLength: 10,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Підтвердження паролю"
                      ),
                      enabled: passwordIsNotEmpty(),
                      controller: confirmPasswordController,
                      onChanged: (value) => setState(() {}),
                    )
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        canContinue ? Colors.green : Colors.grey
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    overlayColor: MaterialStateProperty.all(Colors.indigo),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  onPressed: canContinue ? printFirst : null,
                  child: Text("Register"),
                ),
              ],
            )
          ),
        ),
      );
    }
}


