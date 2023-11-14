class Human {
  String firstName = 'Марина';
  String lastName = 'Столяр';

  String createSignature() {
    return '';
  }

}

class Worker extends Human {
  @override
  String createSignature() {
    return '$firstName $lastName';
  }
}