// Миксин — набор методов, который можно «примешать» к классу.
// Миксин НЕ задаёт структуру и НЕ требует реализации.
// Добавляет функционал поверх наследования.

mixin Move {
  void move() {
    print('I am moving');
  }

  void moveFast() {
    print('I am moving very fast');
  }
}

mixin Jump {
  void jump() {
    print('I can jump');
  }
}
