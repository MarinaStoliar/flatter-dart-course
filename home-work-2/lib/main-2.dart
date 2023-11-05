import 'package:flutter/material.dart';

void main() {
  bool heater = true;
  bool conditioning = true;
  double temperature = 29;

  if (temperature <= 18){
    heater;
    print('Холодно, включаю обігрівач');
  } else if (temperature > 18 && temperature <= 28) {
    print('Комфортна температура ');
  } else { conditioning;
    print('Жарко, включаю кондиціонер');
  }
}


