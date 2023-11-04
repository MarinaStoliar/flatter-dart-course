class Car {
  bool isEnabled = false;
  String model = '';
  double consumptionGasOline = 0; // витрати палива на 1 км; gasoline
  double amountGasOline = 0; // кількість бензину в баці

  Car(this.model, this.consumptionGasOline, this.amountGasOline);

  get liter => null;

  // метод завести машину
  void startEngine() {
    isEnabled == true;
    print('Двигун запущено');
  }

  // метод заправки бензину
  void refuel(double liter) {
    if (liter > 0) {
      amountGasOline += liter;
      print('Заправлено $liter л. У баці $amountGasOline л.');
    }
  }

  // метод для проїзду 1 км
  void toOne() {
    if (amountGasOline >= consumptionGasOline){
      amountGasOline = amountGasOline - consumptionGasOline;
    } else print('Недостатньо бензину');
  }

}
