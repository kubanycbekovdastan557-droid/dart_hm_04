import 'boss.dart';
import 'hero.dart';
import 'dart:math';

class RpgGame {
  static Random random = Random();
  static int _roundNumber = 0;

  static void startGame() {
    Boss boss = Boss('Gaga', 1000, 50);

    Warrior warrior1 = Warrior('Alex', 280, 15);
    Warrior warrior2 = Warrior('Bob', 290, 10);
    Magic magic = Magic('Andrew', 270, 10);
    Medic doc = Medic('Tom', 250, 5, 15);
    Medic assistant = Medic('Strange', 300, 5, 5);
    Berserk berserk = Berserk('Guts', 260, 10);
    Golem golem = Golem('Alukard', 320, 8);
    Lucky lucky = Lucky("Jack", 270, 12);
    Witcher witcher = Witcher("Geralt", 300, 0);
    Thor thor = Thor("Thor", 290, 15);
    List<Hero> heroes = [warrior1, assistant, warrior2, magic, doc, berserk, golem, lucky, witcher, thor];

    _showStatistics(boss, heroes);

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
    for (var hero in heroes) {
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
  _roundNumber++;

  boss.chooseDefence();

  if (!boss.isStunned) {
    boss.attack(heroes);
  } else {
    print("Boss is stunned and skips the round!");
    boss.isStunned = false;
  }

  for (var hero in heroes) {
    if (hero.isAlive() && boss.isAlive() && boss.defence != hero.ability) {
      hero.attack(boss);
      hero.applySuperPower(boss, heroes);
    }
  }

  _showStatistics(boss, heroes);
}

  static _showStatistics(Boss boss, List<Hero> heroes) {
    print('ROUND $_roundNumber ----------');
    print(boss);
    for (var hero in heroes) {
      print(hero);
    }
  }
static int get roundNumber => _roundNumber;
}
