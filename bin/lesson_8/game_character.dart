abstract class GameCharacter {
  int _health;
  int damage;
  String name;

  GameCharacter(this._health, this.damage, this.name);

  int get health => _health;

  set health(int value) {
    if (value < 0) {
      _health = 0;
    } else {
      _health = value;
    }
  }

  bool isAlive() {
    return _health > 0;
  }

  @override
  String toString() {
    return '${runtimeType.toString()} $name Health: $_health Damage: $damage';
  }
}
