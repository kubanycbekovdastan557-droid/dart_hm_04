import 'animals.dart';
import 'interfaces.dart';
import 'transports.dart';
import 'mixins.dart';

void main() {
  Drawable cat = Cat('Tom', 3);

  List<Drawable> drawables = [
    cat,
    Plane(),
    Snake('Jim', 2),
    Car(),
    Parrot('Bob', 5),
  ];

  for (Drawable element in drawables) {
    darwAllVariants(element);
    if (element is Animal) {
      Animal a = element as Animal;
      a.makeVoice();
    }
    if (element is Flyable) {
      (element as Flyable).fly();
    }
    if (element is Move) {
      (element as Move).move();
      (element as Move).moveFast();
    }
    if (element is Jump) {
      (element as Jump).jump();
    }
  }
}

void darwAllVariants(Drawable d) {
  d.draw();
  print(d.draw3D('plastic'));
}
