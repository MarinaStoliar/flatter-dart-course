import 'package:flutter/material.dart';

import 'document.dart';

void main() {
  var document = DateAndSignatureDocument();
  document.printDocument();
  document.save();
}
