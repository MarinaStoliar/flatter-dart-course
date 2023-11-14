
class EquipmentManager {
  bool _connected = false;
  String _equipmentName = '';

  String get equipmentName => _equipmentName;

  set equipmentName(String value) {
    _equipmentName = value;
  }

  bool get connected => _connected;

  set connected(bool value) {
    _connected = value;
  }

  void connect(String name) {
    if (_checkIfNameIsCorrect(name)){
      equipmentName = name;
      connected = true;
      _startSocket();
    }
  }

  bool _checkIfNameIsCorrect(String name){
    return name.isNotEmpty;
  }

  void _startSocket(){

  }

}