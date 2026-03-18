import 'dart:io';

void main() {
  for (int i = 1; i <= 3; i = i + 1) {
    print('Step $i');
  }

  int number = 7;
  for (int i = 1; i <= 10; i++) // i++ increment = i = i + 1
  {
    print('$number x $i = ${number * i}');
  }
  print('------------------');
  number = 5;
  for (int i = 10; i >= 1; i--) {
    print('$number x $i = ${number * i}');
  }
  print('-------------');
  number = 9;
  for (int i = 10; i >= 2; i = i - 2) {
    // i = i - 2 => i -= 2; i = i * 8 => i *= 8

    print('$number x $i = ${number * i}');
  }

  int count = 0;
  while (count < 5) {
    print('Count is $count');
    count++;
    print('Square is ${count * count}');
  }

  String myStr = '#';
  while (myStr.length <= 5) {
    print(myStr);
    myStr += '#';
  }

  int doCount = 0;
  do {
    print('Do-While count is : $doCount');
    doCount++;
  } while (doCount > 5); // false

  doCount = 0;
  while (doCount > 5) {
    // false
    print('While count is : $doCount');
    doCount++;
  }

  for (int i = 1; i < 10; i++) {
    print('Value of i: $i');
    if (i == 3) {
      break; // экстренно прерывает работу всего цикла
    }
  }

  // String value;
  // while (true) {
  //   print('Enter a number or "q" to exit:');
  //   value = stdin.readLineSync()!;
  //   if (value == 'q') {
  //     break;
  //   }
  //   print('Number times 2 = ${int.parse(value) * 2}');
  // }

  // Коллекции List - список
  // упорядоченная коллекция элементов, доступ по индексу, может содержать дубликаты, изменяемый размер
  List<String> fruits = ['banana', 'apple', 'pear', 'mango'];
  print(fruits);
  print('I love ${fruits[3]} and ${fruits[0]}');
  fruits[1] = 'kiwi';
  print(fruits);
  // fruits[10] = 'orange';
  fruits.add('orange');
  fruits.add('grapes');
  fruits.add('banana');
  print(fruits);
  fruits.remove('banana');
  print(fruits);
  fruits.removeAt(2);
  print(fruits);
  fruits.insert(1, 'pine-apple');
  print(fruits);
  fruits.removeLast();
  print(fruits);

  // Коллекции Map - словарь
  // неупорядоченная коллекция пар ключ-значение, ключи уникальны
  Map<String, int> students = {'Bob': 23, 'Alice': 22, 'Lucy': 19};
  print(students);
  print('Alice is ${students['Alice']} years old.');
  students['Lucy'] = 20;
  print(students);
  students['Jim'] = 35;
  print(students);
  students.remove('Lucy');
  print(students);
  print('Total students: ${students.length}');

  print('Keys: ${students.keys}');
  print('Values: ${students.values}');

  students.forEach((key, value) {
    print('$key is $value years old.');
  });

  // Коллекции Set - множество
  // неупорядоченная коллекция уникальных элементов
  Set<String> colors = {'red', 'yellow', 'blue'};
  print(colors);
  colors.add('pink');
  print('Set - $colors');
  colors.add('blue');
  print('Set with extra blue - $colors');
  colors.remove('red');
  print(colors);
  colors.addAll(['black', 'white', 'gray', 'white']);
  print(colors);

  // цикл for-in для коллекций
  for (String elem in colors) {
    print(elem);
  }

  List<int> nums = [11, -7, 78, 55, -45, 0, -1];
  for (var number in nums) {
    if (number < 0) {
      continue;
    }
    print(number);
  }

  List<String> robots = [];
  for (int i = 1; i <= 30; i++) {
    robots.add('Robot000$i');
  }
  print(robots);
  print('End of program');
}
