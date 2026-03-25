import 'animals.dart';

void main() {
  Animal.showCounter();

  Cat myCat = Cat(2, 'Tom', Color.red);
  print(myCat.getInfo());

  Dog myDog = Dog(5, 'Snooppy', Color.darkYellow, 'Sit, bark');
  print(myDog.getInfo());

  FightingDog myFightingDog = FightingDog(
    1,
    'Reks',
    Color.green,
    'Fight',
    9,
  );
  print(myFightingDog.getInfo());
  print('My fighting dog knows ${myFightingDog.commands}');
  print('My dog knows ${myDog.commands}');

  // Animal._counter = 1;
  Animal.showCounter();

  if (myFightingDog.commands == 'Fight') {
    print('This dog is dangerous');
  }

  if(myFightingDog.color == Color.green){
    print('This dog is beautiful');
  }

  print('\x1B[33mЖёлтый текст\x1B[0m');
}
