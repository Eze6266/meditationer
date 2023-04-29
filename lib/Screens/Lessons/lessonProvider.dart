import 'package:flutter/material.dart';

class LessonProvider with ChangeNotifier {
  bool _alle = true;
  bool _ming = false;
  bool _engste = false;
  bool _sove = false;
  bool _historie = false;
  int _screenNumber = 1;

  bool get alle => _alle;
  bool get ming => _ming;
  bool get engste => _engste;
  bool get sove => _sove;
  bool get historie => _historie;
  int get screenNumber => _screenNumber;

  void changeLesson({
     required bool alleNew,required bool mingNew,required bool engsteNew,required bool soveNew,required bool historieNew, required int screenNumberNew
      }) {
        _alle= alleNew;
        _ming=mingNew;
        _engste=engsteNew;
        _historie=historieNew;
        _sove=soveNew;
        _screenNumber=screenNumberNew;
        notifyListeners();
      }
}
