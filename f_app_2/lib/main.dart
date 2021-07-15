import 'package:flutter/material.dart';

void main() {
  var user = new User(10, job: 'sst');
  print('Age = ${user.ageUser}');
  user.name = "toms";
  user.talk();
  user.talkName();
  user.talkNameA();
  user.talkNameB();
  user.totalAgeOptinalPositional(1, 5);
  user.totalAgeOptinalNamed(1, c: 10);
}

class User extends Person with PersonA, PersonB implements Play {
  int _ageUser = 0;
  String? job;

  // 8.Optional- params(named)
  User(int ageUser, {this.job}) {
    this._ageUser = ageUser;
  }

  void totalAgeOptinalPositional(int a, [int? b, int? c]) {
    print('Age a = $a || b = $b || c = $c');
  }

  void totalAgeOptinalNamed(int a, {int? b, int? c}) {
    print('Age a = $a || b = $b || c = $c');
  }

  // 1.constructor : default, params, named

  // 2.factory
/*  factory User(int type) {
    if (type == 0) {
      return User.Male();
    } else {
      return User.Female();
    }
  }*/

/*
  User.Male() {
    _ageUser = 1;
    print('Male');
  }

  User.Female() {
    _ageUser = 2;
    print('Female');
  }
*/

  // 3.getter-setter
  int get ageUser => this._ageUser;

  set ageUser(ageUser) => this._ageUser = ageUser;

  void talk() {
    print('say hi! age = $_ageUser job = $job');
  }

  @override
  void absName() {
    // TODO: implement absName
  }

  @override
  void playGame() {
    // TODO: implement playGame
  }

  @override
  void playTennis() {
    // TODO: implement playTennis
  }
}

// 4. extend class, trong dart chi co don ke thua khi dung extend
abstract class Person {
  String name = "";

  void absName();

  void talkName() {
    print('say hi name = $name');
  }
}

// 5.Abstraction
// abs class khi dc class khac ke thua thi bat buoc override lai method abstract
// abstract method la method khong co dinh nghia dc theo sau boi dau ; va ko co ngoac nhon

// 6.Interface
// la abstract class nhung chi chua abstract method, se duoc implement voi class su dung
abstract class Play {
  void playGame();

  void playTennis();
}

// 7.Mixed, da ke thua trong Dart
class PersonA {
  String nameA = "aa";

  void talkNameA() {
    print('say hi name a = $nameA');
  }
}

class PersonB {
  String nameB = "";

  void talkNameB() {
    print('say hi name b = $nameB');
  }
}
