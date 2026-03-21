import 'car.dart';
import 'person.dart';

void main() {
  int number = 8;
  Car myCar = Car('red', 'BMW X6', 2020);

  print(8);
  print(myCar);
  myCar.displayInfo();
  // myCar.color = 'green';
  myCar.repaint('green');
  myCar.displayInfo();

  Car friendsCar = Car('yellow', 'Nissan Patrol', 2009);
  friendsCar.displayInfo();

  myCar.drive();
  friendsCar.drive();

  Car bestCar = Car.redHondaFit(2021);
  bestCar.displayInfo();
  bestCar.drive();

  Person friend = Person('Jim Brown', 20);
  friend.age = 21;
  friend.displayInfo();
  print(friend.name);
  // friend.name = 'Bob'; 

// Person father = Person('Smith', 45);
//             a = b
  Car fathersCar = Car.withOwner('black', 'Mercedes 220', 1999, Person('Smith', 45));
  fathersCar.displayInfo();

  bestCar.owner = friend;
  myCar.owner = friend;
  bestCar.displayInfo();
  myCar.displayInfo();

  print('End of program');
}
