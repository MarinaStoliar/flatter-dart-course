import 'package:flutter/cupertino.dart';
import 'human.dart';

class Document {
  String title = 'title';
  String text = 'text';

  void printDocument() {
    debugPrint('$title\n$text');
  }

  void save() {
    debugPrint('file saved');
  }
}

class DateDocument extends Document {
  String date = '14-11-2023';

  @override
  void printDocument() {
    super.printDocument();
    debugPrint(date);
  }

  @override
  void save() {
    super.save();
  }
}

class DateAndSignatureDocument extends DateDocument {
  String sign = 'sign';

  @override
  void printDocument(){
    debugPrint(sign);
    super.printDocument();
  }

  @override
  void save() {
    super.save();
  }
}

class SignDocument extends Document {
  Human? sign;

  @override
  void printDocument() {
    debugPrint(sign?.createSignature());
    super.printDocument();
  }

}