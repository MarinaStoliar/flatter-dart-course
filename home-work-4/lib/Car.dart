class Car {
  bool isEnabled = false;
  String model = '';
  double consumptionGasoline = 0; // витрати палива на 1 км; gasoline
  double amountGasoline = 0; // кількість бензину в баці

  Car(this.model, this.consumptionGasoline, this.amountGasoline);

  // метод завести машину
  void startEngine() {
    isEnabled == true;
    print('Двигун запущено');
  }

  // метод заправки бензину
  get liter => null;
  void refuel(double liter) {
    if (liter > 0) {
      amountGasoline += liter;
      // if (amountGasoline < 70)
      print('Заправлено $liter л. У баці $amountGasoline л.');
    }
  }

  // метод для проїзду 1 км
  void toOne() {
    if (amountGasoline >= consumptionGasoline){
      amountGasoline = amountGasoline - consumptionGasoline;
    } else print('Недостатньо бензину');
  }

}
