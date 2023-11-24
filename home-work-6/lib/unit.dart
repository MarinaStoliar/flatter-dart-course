import 'dart:math';

class Unit {
  String? name;
  int? power;
  bool? defensMode;

  Unit(this.name, this.power);

  void aplpyDamage() {
    //  буде розрахунок чи вижив після нанесення удару. В землі буде оверврайт цього метода
  }
}

class WaterUnit extends Unit {
  WaterUnit(String name, int power) : super (name, power);

  @override
  String toString() {
    return '$name : сила - $power';
  }

}

class LandUnit extends Unit {
  int? defense;
  LandUnit(String name, int power, this.defense) : super (name, power);

  @override
  String toString() {
    return '$name : сила - $power : захист - $defense';
  }
}

// Клас для створення бою
class Battle {
  List<Unit> units = [];
  Battle(int counter) {
    // for (int i = 0; i < counter; i++) {
    //   units.add(WaterUnit('Вода ${i}', Random().nextInt(10)));
    //   units.add(LandUnit('Земля ${i}', Random().nextInt(10), Random().nextInt(10)));
    // }

    units.add(WaterUnit('Акула', 10));
    units.add(WaterUnit('Окунь', 5));
    units.add(WaterUnit('Лягушка', 2));

    units.add(LandUnit('Лев', 2, 8));
    units.add(LandUnit('Єнот', 5, 8));
    units.add(LandUnit('Слон', 10, 10));

  }

  void run() {
   //  List<WaterUnit> unts1 = units.whereType<LandUnit>().toList();
   //  List<LandUnit> unts2 = units.whereType<WaterUnit>().toList();

  }




}


