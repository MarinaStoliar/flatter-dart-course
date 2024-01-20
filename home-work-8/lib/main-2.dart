import 'package:flutter/material.dart';

void main() {
  String text = "Машко, привіт! Як ти? У Ані тут день народження був, то я їй подарунок так довго вибирала… просто в голову нічого не лізло. Коротше, чайник купила їй. А що, класна тема – завжди стане в нагоді, і з розміром вгадувати не треба. Я думаю Юлі теж чайник подарувати, коли вона матиме ДР. Або кавоварку… Коротше, щось таке.";

  List<String> names = ["Ан", "Юл", "Кат", "Маш", "Ван", "Пет"];
  List<String> foundNames = findNamesAfterKeyword(text, "чайник", names);
  print("Знайдені імена після згадки про чайник: $foundNames");
}

List<String> findNamesAfterKeyword(String text, String keyword, List<String> names) {
  List<String> foundNames = [];
  bool keywordFound = false;

  for (String sentence in text.split('.')) {
    if (sentence.toLowerCase().contains(keyword.toLowerCase())) {
      keywordFound = true;
      List<String> words = sentence.split(' ');

      for (int i = 0; i < words.length; i++) {
        String currentWord = words[i];

        // Якщо слово починається з великої літери і не є ключовим словом "чайник"
        if (currentWord.isNotEmpty &&
            currentWord[0].toUpperCase() == currentWord[0] &&
            currentWord.toLowerCase() != keyword.toLowerCase()) {
          // Перевіряємо, чи це ім'я, порівнюючи з масивом імен
          if (names.any((name) => currentWord.toLowerCase().startsWith(name.toLowerCase()))) {
            foundNames.add(currentWord);
          }
        }
      }
    }
  }

  return foundNames;
}
