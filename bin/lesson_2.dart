import 'dart:io';

void main() {
  int temperature = -5;
  bool isSnowy = true;

  if (temperature < 0) {
    // true
    String cinemTitle = 'Cosmo Park';
    print('Go to cinema $cinemTitle');
  }

  if (temperature > 25) {
    // false
    print('Go swimming');
  }

  if (isSnowy) {
    // true
    print('Take an umbrella');
  } else {
    print('Take on a hat');
  }

  if (temperature == 15) {
    // false
    print('Go for a walk');
  } else {
    print('Go to school');
  }

  // else {
  //   print('Go to Geeks');
  // }

  temperature = 14;
  if (temperature > 25) {
    print('The weather is hot!');
  } else if (temperature > 20) {
    print('The weather is warm!');
  } else if (temperature > 10) {
    print('The weather is cool!');
  } else if (temperature > 0) {
    print('The weather is cold!');
  } else {
    print('The weather is freezing!');
  }

  int numberOfStudents = 10;
  // логический оператор AND (И) - &&
  if (temperature > 10 && numberOfStudents > 8) {
    // true && true = true
    print('Go to work');
  }

  if (temperature == 10 && numberOfStudents > 5) {
    // false && true = false
    print('Plant trees');
  }

  // логический оператор OR (ИЛИ) - ||
  if (isSnowy || temperature < 0) {
    // true || false = true
    print('Stay at home');
  }

  if (temperature < 5 || numberOfStudents == 22) {
    // false || false = false
    print('Play Football');
  }

  if (temperature > 15 && temperature < 25 ||
      numberOfStudents > 5 && numberOfStudents < 10 ||
      isSnowy) {
    // false && true || true && false || true
    // => 0 * 1 + 1 * 0 + 1 = 0 + 0 + 1 = 1 (true)
    print('Play Tennis');
  }

  if (temperature > 15 &&
      (temperature < 25 || numberOfStudents > 5) &&
      (numberOfStudents < 10 || isSnowy)) {
    // false && (true || true) && (false || true)
    // => 0 * (1 + 1) * (0 + 1) = 0 * 1 * 1 = 0 (false)
    print('Play Bowling');
  }

  isSnowy = false;
  // if (isSnowy) {
  //   // false
  // } else {
  //   print('Play PS4');
  // }

  if (!isSnowy) {
    // true
    print('Play PS5');
  }

  numberOfStudents = numberOfStudents + 10;
  if (numberOfStudents > 15) {
    // false
    print('Go to picnic');
    if (temperature > 20) {
      // вложенная условная конструкция
      print('Eat an ice-cream');
    } else {
      print('Drink a hot tea');
    }
  }

  // приведение типов (type casting)
  String age = '49';
  print('Birth year: ${2026 - int.parse(age)}');

  int price = 15;
  print('Price of mouse: ' + price.toString());

  print('Where are you from? ');
  String location = stdin.readLineSync()!;
  print('$location is very beautifull place');

  print('Enter first number: ');
  int number1 = int.parse(stdin.readLineSync()!);
  print('Enter second number: ');
  int number2 = int.parse(stdin.readLineSync()!);
  print('The product of two numbers = ${number1 * number2}');

  int num = 5;
  switch (num) {
    case 1:
      print('The number equals one');
      break;
    case 2:
      print('The number equals two');
      break;
    case 3:
      print('The number equals three');
      break;
    default:
      print('Unknown number');
  }
}
