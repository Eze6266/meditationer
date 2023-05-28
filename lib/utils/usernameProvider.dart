import 'package:flutter/material.dart';
import 'package:meditation_app/Auth/firestore_services.dart';

class UsernameProvider with ChangeNotifier {
  String _username='user';
  String get username => _username;
  
  void addUserName (String user_name){
    _username = user_name;
    print("$username yess");
    notifyListeners();

  }
}