import 'package:flutter/material.dart';

void main() {
  int temperature = 19;

  bool isHeater = false; // щоб включити обігрівач true;
  bool isConditioning = false; // щоб включити кондиціонер true;

  if (temperature <= 18){
    isHeater = true;
    print('Холодно, включаю обігрівач');
  } else if (temperature > 28) {
    isConditioning = true;
    print('Жарко, включаю кондиціонер');
  } else print('Комфортна температура');
}


