import 'super_ability.dart';
import 'game_character.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility ability;
  Hero(super.health, super.damage, super.name, this.ability);

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);
}

class Warrior extends Hero {
  Warrior(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.criticalDamage);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    int crit = damage * (RpgGame.random.nextInt(4) + 2); // 2,3,4,5
    boss.health -= crit;
    print('Warrior $name crited: $crit');
  }
}

class Magic extends Hero {
  Magic(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.boosting);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    // TODO: Here will be implementation of Boosting
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;
  Berserk(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.blockRevert);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('Berserk $name reverted: $blockedDamage');
  }
}

class Medic extends Hero {
  int healPoints;
  Medic(int health, int damage, String name, this.healPoints)
    : super(health, damage, name, SuperAbility.healing);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (Hero hero in heroes) {
      if (hero.isAlive() && hero != this) {
        hero.health += healPoints;
      }
    }
  }
}
