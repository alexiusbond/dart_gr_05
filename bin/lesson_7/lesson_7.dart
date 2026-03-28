import 'mixins.dart';

import 'transports.dart';
import 'animals.dart';
import 'interfaces.dart';

void main() {
  // Start of lesson 7
  Transport car = Car();

  Drawable parrot = Parrot(2, 'Thomas');

  List<Drawable> drawables = [
    car,
    parrot,
    Dog(6, 'Boss'),
    Plane(),
    Snake(3, 'Kaa'),
  ];
  for (Drawable element in drawables) {
    drawAllVariants(element);
    if (element is Animal) {
      Animal a = element as Animal; // type casting
      a.makeVoice();
    }
    if (element is Speakable) { 
      (element as Speakable).speak();
    }
    if (element is Fly) { 
      (element as Fly).fly(100);
    }
  }

  // the end
}

void drawAllVariants(Drawable d) {
  d.draw();
  print(d.draw3D('wood'));
}
