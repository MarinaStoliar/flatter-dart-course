class Calculator {
  bool isEnabled = false; // не включений;


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
    print('Статус калькулятора: $isEnabled. Підтримує наступні дії: add - додавання, sub - віднімання, mult - множення, div - ділення.');
  }


}