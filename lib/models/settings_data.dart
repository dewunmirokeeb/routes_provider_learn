import 'package:flutter/material.dart';

class SettingsData with ChangeNotifier {
  Color _appbarcolor = Colors.blue;
  Color get appbarcolor => _appbarcolor;
  set appbarcolor(Color color) {
    _appbarcolor = color;
    notifyListeners();
  }
}
