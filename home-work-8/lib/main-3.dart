import 'dart:async';

void main() {
  List<String> registeredLogins = ["marina75", "luda1990", "katha88"];

  String login = "luda1990";
  String email = "luda@mail.com";
  String password = "12345abc";
  String confirmPassword = "12345abc";
  int age = 12;
  String address = "Japan, Tokyo, Lano st., 12, 44883";

  String result = registerUser(login, email, password, confirmPassword, age, address, registeredLogins);
  print(result);

}

String registerUser(String login, String email, String password, String confirmPassword, int age, String address, List<String> registeredLogins) {
  if (registeredLogins.contains(login)) {
    return "Помилка: Логін вже зайнятий";
  }

  RegExp emailRegex = RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");
  if (!emailRegex.hasMatch(email)) {
    return "Помилка: Некоректний емейл";
  }

  if (password != confirmPassword) {
    return "Помилка: Паролі не збігаються";
  }

  if (age < 18) {
    return "Помилка: Користувач повинен бути старше 18 років";
  }

  if (!address.toLowerCase().contains("ukraine")) {
    return "Помилка: Країна має бути Україна";
  }

  return "Реєстрація пройшла успішно";
}
