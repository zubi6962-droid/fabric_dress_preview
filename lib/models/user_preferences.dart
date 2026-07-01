import 'package:flutter/material.dart';

enum Gender { female, male }

class UserPreferences extends ChangeNotifier {
  Gender _gender = Gender.female;
  String _size = 'M';
  double _opacity = 1.0;
  double _rotation = 0.0;
  double _scale = 1.0;
  Offset _position = Offset.zero;

  Gender get selectedGender => _gender;
  String get selectedSize => _size;
  double get opacity => _opacity;
  double get rotation => _rotation;
  double get scale => _scale;
  Offset get position => _position;

  void setGender(Gender g) { _gender = g; notifyListeners(); }
  void setSize(String s) { _size = s; notifyListeners(); }
  void setOpacity(double o) { _opacity = o; notifyListeners(); }
  void setRotation(double r) { _rotation = r; notifyListeners(); }
  void setScale(double s) { _scale = s; notifyListeners(); }
  void setPosition(Offset p) { _position = p; notifyListeners(); }
}
