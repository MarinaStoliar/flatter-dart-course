import 'dart:async';

class ParameterSender {
  int voltage = 220;
  int power = 3200;
  int speed = 0;
  int silentMode = 0;

  late Timer _timer;

  ParameterSender() {
    _timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      sendMessage();
    });
  }

  void updateParameters(int newVoltage, int newPower, int newSpeed, int newSilentMode) {
    voltage = newVoltage;
    power = newPower;
    speed = newSpeed;
    silentMode = newSilentMode;
  }

  void sendMessage() {
    if (_hasParametersChanged) {
      print('<voltage=$voltage,power=$power,speed=$speed,silent_mode=$silentMode>');
    }
  }

  bool get _hasParametersChanged {
    return true;
  }
}

void main() {
  ParameterSender parameterSender = ParameterSender();
  parameterSender.updateParameters(220, 3200, 0, 0);
  parameterSender.updateParameters(10, 1000, 5, 5);
}
