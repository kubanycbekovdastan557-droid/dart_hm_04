import 'interfaces.dart';
import 'mixins.dart';

// Можно наследовать.
// Может содержать готовые методы.
// Может иметь абстрактные методы, которые наследник обязан реализовать.

abstract class Animal with Move implements Drawable {
  String name;
  int age;

  Animal(this.name, this.age);

  void sleep() {
    print('$name is sleeping');
  }

  void makeVoice();
}

class Cat extends Animal with Jump {
  Cat(super.name, super.age);

  @override
  void makeVoice() {
    print('Meow');
  }

  @override
  void draw() {
    print('🐈');
  }

  @override
  String draw3D(String material) {
    return 'Cat is drawn in 3D with $material';
  }
}

abstract class Reptile extends Animal {
  Reptile(super.name, super.age);

  void crawl() {
    print('$name is crawling');
  }
}

class Snake extends Reptile {
  Snake(super.name, super.age);

  @override
  void makeVoice() {
    print('Hissss');
  }

  @override
  void draw() {
    print('🐍');
  }

  @override
  String draw3D(String material) {
    return 'Snake is drawn in 3D with $material';
  }
}

class Parrot extends Animal with Jump implements Flyable {
  Parrot(super.name, super.age);

  @override
  void makeVoice() {
    print('Hello');
  }

  @override
  void fly() {
    print('Parrot is flyaing not high');
  }

  @override
  void draw() {
    print('🦜');
  }

  @override
  String draw3D(String material) {
    return 'Parrot is drawn in 3D with $material';
  }
}
