class Human {
  double height = 0;
  int age = 0;
  String name = '';
  Human(this.height, this.age, this.name){
    if ((age < 0) && (age > 100)) print('Не вірні вхідні дані');
  }

  String changeName(String newName) {
    name = newName;
    return name;
  }

  void grow(newAge, newName) {
    while (age <= 100) {
      if (age < 12) height += 8;
      else if (age >= 12 && age < 25) height += 3;
      else if (age >= 25 && age < 60) height += 0;
      else height -= 2;
      age++;
      if (age == newAge) changeName(newName);

      print('Age is $age. height is $height, name is $name');
    }
  }
}