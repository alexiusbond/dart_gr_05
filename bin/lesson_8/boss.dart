import 'game_character.dart';
import 'super_ability.dart';
import 'heroes.dart';
import 'rpg_game.dart';

class Boss extends GameCharacter {
  SuperAbility? defence;
  Boss(super.health, super.damage, super.name);

  void chooseDefence() {
    List<SuperAbility> variants = SuperAbility.values;
    int randomIndex = RpgGame.random.nextInt(variants.length); // 0,1,2,3
    defence = variants[randomIndex];
  }

  void attack(List<Hero> heroes) {
    for (Hero hero in heroes) {
      if (hero.isAlive()) {
        if (hero is Berserk && defence != SuperAbility.blockRevert) {
          int blocked = (RpgGame.random.nextInt(2) + 1) * 5; // 5,10
          hero.health -= (damage - blocked);
          hero.blockedDamage = blocked;
        } else {
          hero.health -= damage;
        }
      }
    }
  }

  @override
  String toString() {
    return '${super.toString()} Defence: $defence';
  }
}
