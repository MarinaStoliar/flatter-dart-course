import 'dart:io';

void main() {
  double radius = 0.0;
  double width = 0.0;
  double height = 0.0;

  // Обрати фігуру
  int choice = 2;

  switch (choice) {
    case 1:
      calculateArea('Circle', 2.5, 0, 0);
      break;
    case 2:
      calculateArea('Square', 0, 7, 0);
      break;
    case 3:
      calculateArea('Rectangle', 0, 7, 10);
      break;
    default:
      print("Невірний вибір");
      return;
  }
}

void calculateArea(String currentShape, double radius, double width, double height) {
  double area;
  if (currentShape == 'Circle') {
    area = 3.14 * radius * radius;
  } else if (currentShape == 'Square') {
    area = width * width;
  } else if (currentShape == 'Rectangle') {
    area = width * height;
  } else {
    area = 0;
  }

  print("Площа фігури $currentShape: $area");
}

