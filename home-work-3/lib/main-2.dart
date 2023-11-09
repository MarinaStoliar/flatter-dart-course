import 'package:flutter/material.dart';

void main() {
  List<String> dataBase = [
    'ТОВ Фенікс',
    'ВАТ Метсбут', 'ПП Іванов', 'ВАТ Шаурма', 'ВАТ Меблі',
    'ТОВ ЕПАМ', 'ТОВ Буд', 'ТОВ ФоззіГруп', 'ТОВ МеталГруп', 'ТОВ Wog'
  ];

  String oldName = 'ВАТ Шаурма';
  String newName = 'ВАТ Пиріжки';

  List<String> updatedDataBase = List.from(dataBase);

  for (int i = 0; i < updatedDataBase.length; i++ ) {
    if (updatedDataBase[i] == oldName) {
      updatedDataBase[i] = newName;
      break;
    }
  }
  print(updatedDataBase);
}

