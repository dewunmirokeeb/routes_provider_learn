import 'package:flutter/foundation.dart';

class UserData with ChangeNotifier {
  String _username = '';
  String get username => _username;
  set username(String username) {
    _username = username;
    notifyListeners();
  }
}
