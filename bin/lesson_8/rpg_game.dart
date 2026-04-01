import 'boss.dart';
import 'dart:math';
import 'heroes.dart';

class RpgGame {
  static Random random = Random();
  static int roundNumber = 0;

  static void startGame() {
    Boss boss = Boss(1000, 50, 'Diablo');

    Warrior warrior1 = Warrior(290, 10, 'Salazar');
    Warrior warrior2 = Warrior(280, 15, 'Jinwu');
    Magic magic = Magic(270, 10, 'Anton');
    Berserk berserk = Berserk(260, 15, 'Overlord');
    Medic doc = Medic(250, 5, 'Pirat', 15);
    Medic assistant = Medic(300, 5, 'Junior', 5);

    List<Hero> heroes = [warrior1, doc, warrior2, magic, berserk, assistant];
    _showStatus(boss, heroes);

    while (!_isGameOver(boss, heroes)) {
      _playRound(boss, heroes);
    }
  }

  static bool _isGameOver(Boss boss, List<Hero> heroes) {
    if (!boss.isAlive()) {
      print('Heroes won!!!');
      return true;
    }
    bool allHeroesDead = true;
    for (Hero hero in heroes) {
      if (hero.isAlive()) {
        allHeroesDead = false;
        break;
      }
    }
    if (allHeroesDead) {
      print('Boss won!!!');
      return true;
    }
    return false;
  }

  static void _playRound(Boss boss, List<Hero> heroes) {
    roundNumber++;
    boss.chooseDefence();
    boss.attack(heroes);
    for (Hero hero in heroes) {
      if (hero.isAlive() && boss.isAlive() && hero.ability != boss.defence) {
        hero.attack(boss);
        hero.applySuperPower(boss, heroes);
      }
    }
    _showStatus(boss, heroes);
  }

  static void _showStatus(Boss boss, List<Hero> heroes) {
    print('ROUND $roundNumber ------------------');
    print(boss);
    for (Hero hero in heroes) {
      print(hero);
    }
  }
}
