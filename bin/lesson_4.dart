void main() {
  // DRY - don't repeat yourself
  print('ЗАВТРАК');
  makeTea();

  print('ОБЕД');
  makeTea();

  print('УЖИН');
  makeTea();

  calculatePerimeter(4.5, 5, 'Аудитория 4');
  calculatePerimeter(6.5, 10, 'Холл');
  calculatePerimeter(7, 5, 'Кухня');

  int areaOfAuditory4 = calculateArea(4.5, 5);
  int areaOfHall = calculateArea(6.5, 10);
  int areaOfKitchen = calculateArea(7, 5);
  print('Площадь комнаты Аудитория 4: $areaOfAuditory4');
  print('Площадь комнаты Холл: $areaOfHall');
  print('Площадь комнаты Кухня: $areaOfKitchen');
  print('ОБЩАЯ ПЛОЩАДЬ: ${areaOfAuditory4 + areaOfHall + areaOfKitchen}');

  double costForBishkek = deliveryCost(3, baseCost: 200, city: 'Бишкек');
  double costForOsh = deliveryCost(5, city: 'Ош');
  print('Цена доставки для Бишкека: $costForBishkek, а для Ош: $costForOsh');
  print(globalVariable);
}

String globalVariable = 'I am global';
void scopeExample(int paramVariable) {
  print(globalVariable);
  print(paramVariable);
  // print(localVariable);
  int localVariable = 8;
  print(localVariable);
  if (paramVariable > 0) {
    print(localVariable);
    String ifBlockVariable = 'hello';
    print(ifBlockVariable);
  }
    // print(ifBlockVariable);
}

double deliveryCost(
  double weight, {
  required String city,
  double baseCost = 300.0,
}) {
  double cost = weight * baseCost;
  if (city != 'Бишкек') {
    cost *= 2;
  }
  return cost;
}

int calculateArea(double length, double width) {
  // Возвращаемая функция с параметрами
  double area = length * width;
  return area.round();
}

void calculatePerimeter(double length, double width, String room) {
  // Невозвращаемая функция с параметрами
  double perimeter = (length + width) * 2;
  print('Периметр комнаты $room: $perimeter');
}

void testFunction() {
  // Невозвращаемая функция без параметров
  print('Это тестовая функция');
}

void makeTea() {
  // Невозвращаемая функция без параметров
  print('Вскипятить воду');
  print('Насыпать заварку');
  print('Залить кипятком');
  print('Дать настояться');
  print('Налить в чашку');
  print('Добавить молоко или сахар по-вкусу');
  testFunction();
}
