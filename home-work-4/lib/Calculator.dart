class Calculator {
  bool isEnabled = false;


  int add(int value1, int value2) {
    if (isEnabled == false) {
      throw 'Калькулятор вимкнений';
    }
    return value1 + value2;
  }

  int mult(int value1, int value2) {
    if (isEnabled == false) {
      throw 'Калькулятор вимкнений';
    }
    return value1 * value2;
  }

  double div(double value1, double value2){
    if (isEnabled == false) {
      throw 'Калькулятор вимкнений';
    }
    return value1 / value2;
  }

  int sub(int value1, int value2){
    if (isEnabled == false) {
      throw 'Калькулятор вимкнений';
    }
    return value1 - value2;
  }

  void info() {
    String status = isEnabled ? 'ввімкнений' : "вимкнений";
    print('Статус калькулятора: $status. Підтримує наступні дії: add - додавання, sub - віднімання, mult - множення, div - ділення.');
  }


}