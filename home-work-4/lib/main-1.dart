import 'dart:io';
import 'package:flutter/material.dart';

import 'Human.dart';

void main() {
  Human dasha = Human(50, 0, 'Dasha');
  Human oleg = Human(50, 0, 'Oleg');

  dasha.grow(20, 'Marina');

  oleg.grow(10, 'Alex');

}

