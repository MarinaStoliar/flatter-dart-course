import 'dart:math';

class Unit {
  String name;
  int power;
  Unit(this.name, this.power);
}

class WaterUnit extends Unit {
  WaterUnit(String name, int power) : super(name, power);
  @override
  String toString() {
    return '$name : сила - $power';
  }
}

class LandUnit extends Unit {
  int defense;
  LandUnit(String name, int power, this.defense) : super(name, power);
  @override
  String toString() {
    return '$name : сила - $power : захист - $defense';
  }
  @override
  void applyDamage() {
    int effectivePower = max(0, power! - (defense ?? 0));
    print('$name отримав удар з ефективною силою - $effectivePower');
  }
}

class Battle {
  List<Unit> army1 = [];
  List<Unit> army2 = [];

  WaterUnit makeWaterUnit(String name) {
    return WaterUnit(name, Random().nextInt(10));
  }
  LandUnit makeLandUnit(String name) {
    return LandUnit(name, Random().nextInt(10), Random().nextInt(10));
  }

  Battle() {
    army1.add(makeWaterUnit('Акула'));
    army1.add(makeWaterUnit('Окунь'));
    army1.add(makeWaterUnit('Лягушка'));
    army1.add(makeLandUnit('Лев'));
    army1.add(makeLandUnit('Єнот'));
    army1.add(makeLandUnit('Слон'));

    army2.add(makeWaterUnit('Акула'));
    army2.add(makeWaterUnit('Окунь'));
    army2.add(makeWaterUnit('Лягушка'));
    army2.add(makeLandUnit('Лев'));
    army2.add(makeLandUnit('Єнот'));
    army2.add(makeLandUnit('Слон'));
  }

void run() {
  for (var unit1 in army1) {
    for (var unit2 in army2) {
        if ((unit1 is LandUnit && unit2 is WaterUnit) || (unit1 is WaterUnit && unit2 is LandUnit)) {
         continue;
        } else {
         bool attackOrDefend1 = Random().nextBool();
         bool attackOrDefend2 = Random().nextBool();

         print('$unit1 в атаці: $attackOrDefend1 vs $unit2  в атаці: $attackOrDefend2');

         int winArmy = 0;
         int def1 = 0;
         int def2 = 0;

          if (attackOrDefend1 || attackOrDefend2) {
            if (unit1 is LandUnit && unit2 is LandUnit) {
                def1 = unit1.defense;
                def2 = unit2.defense;
            } else {
              def1 = 0;
              def2 = 0;
            }
            if(unit1.power == unit2.power) {
              print('Сили рівні, нічія');
            } else {
              winArmy = unit1.power - def2 > unit2.power - def1 ? 1 : 2;
              print('Перемога за армією: $winArmy');
            }
          } else {
            print('Обидва захищаються, бій не відбувається');
          }
        }
      }
    }
  }
}

void main() {
  Battle battle = Battle();
  battle.run();
}
