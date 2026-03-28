import 'interfaces.dart';
import 'mixins.dart';

// Можно наследовать.
// Может содержать готовые методы.
// Может иметь абстрактные методы, которые наследник обязан реализовать.
abstract class Animal implements Drawable {
  int age;
  String name;

  Animal(this.age, this.name);

  void sleep() {
    print('Animal is sleeping...');
  }

  void makeVoice();
}

abstract class Reptile extends Animal {
  Reptile(super.age, super.name);
}

class Snake extends Reptile {
  Snake(super.age, super.name);
  @override
  void makeVoice() {
    print('Snake hisses');
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

class Dog extends Animal {
  Dog(super.age, super.name);

  @override
  void makeVoice() {
    print('Dog barks');
  }

  @override
  void draw() {
    print('🦮');
  }

  @override
  String draw3D(String material) {
    return 'Dog is drawn in 3D with $material';
  }
}

class Parrot extends Animal with Fly implements Speakable {
  Parrot(super.age, super.name);

  @override
  void makeVoice() {
    print('Parrot says chirp');
  }

  @override
  void speak() {
    print('Parrot repeats phrases');
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
