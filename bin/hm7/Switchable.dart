import 'mixins.dart';

abstract class Switchable {
  void turnOn();
  void turnOff();
}

abstract class Adjustable {
  void increase();
  void decrease();
}

abstract class Device implements Switchable {
  final String name;
  Device(this.name);
  void showInfo() {
    print('Device: $name');
  }
}

class SmartLamp extends Device with BatteryPowered implements Adjustable {
  int _brightness = 0;

  SmartLamp(String name) : super(name);

  @override
  void turnOn() {
    print('Lamp $name is ON');
  }

  @override
  void turnOff() {
    print('Lamp $name is OFF');
  }

  @override
  void increase() {
    if (_brightness < 100) {
      _brightness += 10;
    }
  }

  @override
  void decrease() {
    if (_brightness > 0) {
      _brightness -= 10;
    }
  }

  @override
  void showInfo() {
    print('Device: $name, brightness: $_brightness');
  }
}

class SmartSpeaker extends Device with BatteryPowered implements Adjustable {

  int volume = 0;

  SmartSpeaker(String name) : super(name);

  @override
  void turnOn() {
    print('Speaker $name is ON');
  }

  @override
  void turnOff() {
    print('Speaker $name is OFF');
  }

  @override
  void increase() {
   if(volume < 100 ){
    volume += 5;
   }
    print('Volume increased to $volume');
  }

  @override
  void decrease() {
 if(volume > 0){
    volume -= 5;
    print('громкость: $volume');
  }
  }
 @override
 void showInfo(){
    print('Device: $name, Speaker: $volume');
 }
}

class SmartThermostat extends Device{

int temperature = 0;

SmartThermostat (String name) :super(name);


@override
  void turnOff(){
    print('Thermostat $name is OFF');
  }


@override
  void turnOn(){
    print('Thermostat $name is ON');
  }


@override
  void showInfo(){
    print('Device: $name, Temperature: $temperature ');
  }



}
