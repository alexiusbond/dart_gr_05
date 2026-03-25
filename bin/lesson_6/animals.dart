enum Color {
  red('\x1B[31m'),
  green('\x1B[32m'),
  darkYellow('\x1B[33m');

  final String code;

  const Color(this.code);
}

class Animal {
  static int _counter = 0;

  static void showCounter() {
    print('Was created: $_counter animals');
  }

  Color color;
  int age;
  String name;

  Animal(this.age, this.name, this.color) {
    _counter++;
  }

  String getInfo() {
    return 'NAME: $name AGE: $age COLOR: ${color.code}${color.name}\x1B[0m';
  }
}

class Cat extends Animal {
  Cat(super.age, super.name, super.color);
}

class Dog extends Animal {
  String commands;
  Dog(super.age, super.name, super.color, this.commands);

  @override
  String getInfo() {
    return '${super.getInfo()} COMMANDS: $commands';
  }

  void bark() {
    print('Dog says woof');
  }
}

class FightingDog extends Dog {
  int wins;
  FightingDog(super.age, super.name, super.commands, super.color, this.wins);

  @override // аннотация
  String getInfo() {
    return '${super.getInfo()} WINS: $wins';
  }

  void fight() {
    print('Fighting god is fighting!');
  }
}
