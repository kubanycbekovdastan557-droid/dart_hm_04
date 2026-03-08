import 'game_character.dart';
import 'super_ability.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility ability;

  Hero(super.name, super.health, super.damage, this.ability);

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);
}

class Warrior extends Hero {
  Warrior(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.criticalDamage);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    int crit = (RpgGame.random.nextInt(5) + 2) * damage; // 2,3,4,5,6
    boss.health -= crit;
    print('Warrior $name hits critically $crit');
  }
}

class Magic extends Hero {
  Magic(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.boost);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (RpgGame.roundNumber <= 4){
      for(var hero in heroes){
      if (hero.health > 0 && this != hero) {
      hero.damage += 5;
}
      }
    }
    print('Magic has strengthened the heroes attack!');
  }
}

class Medic extends Hero {
  int healPonts;
  Medic(String name, int health, int damage, this.healPonts)
    : super(name, health, damage, SuperAbility.heal);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive() && this != hero) {
        hero.health += healPonts;
      }
    }
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;
  Berserk(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.blockRevert);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('Berserk $name is reverted $blockedDamage');
  }
}


class Golem extends Hero {

  Golem(String name, int health, int damage)
      : super(name, health, damage, SuperAbility.blockRevert);


  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive() && hero is! Golem) {
        int damageToHero = boss.damage;
        int p = damageToHero ~/ 5;

        hero.health -= (damageToHero - p);
        this.health -= p;
      }
    }
  }
}



  class Lucky extends Hero {
  Lucky(String name, int health, int damage)
      : super(name, health, damage, SuperAbility.lucky);

  
  void applySuperPower(Boss boss, List<Hero> heroes) {}
}
  
 



class Witcher extends Hero {
  bool hasResurrected = false;

  Witcher(String name, int health, int damage)
      : super(name, health, damage, SuperAbility.resurrection);


  void attack(Boss boss) {
    // Witcher не атакует босса
  }


  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (!hasResurrected && this.isAlive()) {
      for (var hero in heroes) {
        if (!hero.isAlive()) {
          hero.health = this.health;
          this.health = 0;
          hasResurrected = true;

          print(
              "Witcher $name sacrificed himself to resurrect ${hero.name}");
          break;
        }
      }
    }
  }
}


class Thor extends Hero {
  Thor(String name, int health, int damage)
      : super(name, health, damage, SuperAbility.stun);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (RpgGame.random.nextBool()) {
      boss.isStunned = true;
      print("Thor $name stunned the boss!");
    }
  }
}