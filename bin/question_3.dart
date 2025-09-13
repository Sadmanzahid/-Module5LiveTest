 abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan implements Appliance {
  void turnOn() {
    print("Fan is now running");
  }
  void turnOff() {
    print("Fan is now stopped\n");
  }
}

class Light implements Appliance {
  void turnOn() {
    print("Light is switched on");
  }

  void turnOff() {
    print("Light is switched off");
  }
}

void main() {

  Fan fan = Fan();
  Light light = Light();


  fan.turnOn();
  fan.turnOff();

  light.turnOn();
  light.turnOff();
}
