import 'package:flutter/foundation.dart';

class AppController extends ChangeNotifier{

  static AppController instance = AppController();
  
  bool isDarTheme = false;
  changeTheme(){
    isDarTheme = !isDarTheme;
    notifyListeners();
  }
}