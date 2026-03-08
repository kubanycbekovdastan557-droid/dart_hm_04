import 'Switchable.dart';
import 'mixins.dart';
void main(){


List<Device> SmartHome =[SmartLamp('1'), SmartSpeaker('2'), SmartThermostat('3')];

  for (var device in SmartHome) {
    device.showInfo();
  }

  for (var device in SmartHome) {
    device.turnOn();
  }

 var adjustableDevices = SmartHome.whereType<Adjustable>();
for (var device in adjustableDevices) {
  device.increase();
}

var batteryPowered = SmartHome.whereType<BatteryPowered>();
for (var device in batteryPowered){
device.showBattery();
}
}





