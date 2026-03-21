import 'dart:math';

class Person {
  String _name;
  int _age;

  Person(this._name, this._age) {
    _wasBorn();
  }

  void _wasBorn() {
    print('Person $name was born');
  }

  String get name => _name;

  int get age => _age;

  set age(int value) {
    if (value < 0) {
      print('Age can not be negative');
    } else {
      _age = value;
    }
  }

  int calculateBirthYear() {
    return 2026 - _age;
  }

  void displayInfo() {
    print('Name: $_name Age: $_age Birth year: ${calculateBirthYear()}');
  }
}
