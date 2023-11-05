class Car {
  bool isEnabled = false;
  String model = '';
  double consumption = 0; // витрати палива на 1 км; gasoline
  double amount = 0; // кількість бензину в баці
  double fullAmount = 70;

  Car(this.model, this.consumption, this.amount);

  // метод завести машину
  void startEngine() {
    isEnabled = true;
    print('Двигун запущено');
  }

  // метод заправки бензину
  void refuel() {
    print('У баці ${amount.toStringAsFixed(2)} л. Заправлено ${(fullAmount-amount).toStringAsFixed(2)} л.');
    amount = fullAmount;
  }

  // метод для проїзду 1 км
  bool toOne() {
    bool isRun = false;
    if (isEnabled){
      if (amount >= consumption){
        amount = amount - consumption;
        isRun = true;
      } else print('Недостатньо бензину');
    } else print('Двигун не заведений');
    return isRun;
  }

}
