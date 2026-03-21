import 'person.dart';

class Car {
  // поля, аттрибуты
  String color;
  String model;
  int year;
  Person? owner;

  // // Конструктор
  // Car(String theColor, String theModel, int theYear) {
  //   color = theColor;
  //   model = theModel;
  //   year = theYear;
  // }

  // // Конструктор с инициализирующим списком
  // Car(String color, String model, int year)
  //   : this.color = color,
  //     this.model = model,
  //     this.year = year;

  // Конструктор с параметрами, присвающимися напрямую
  Car(this.color, this.model, this.year);

  // Именнованный конструктор
  Car.redHondaFit(this.year) : color = 'red', model = 'Honda Fit';
  Car.withOwner(this.color, this.model, this.year, this.owner);

  // Методы (функции)
  void drive() {
    print('Car $model is driving');
  }

  void repaint(String newColor) {
    color = newColor;
  }

  void displayInfo() {
    String ownerInfo = 'No info';
    if (owner != null) {
      ownerInfo = owner!.name;
    }
    print('Model: $model Year: $year Color: $color Owner: $ownerInfo');
  }
}
