import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/Screens/Home/Home.dart';

class Auth {
  
  void createNewUser( final String email, final String password, final BuildContext context)async{
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    } catch (e) {
      SnackBar(content: Text("$e") );
    }
  }

  void signInUser(String email, String password, BuildContext context)async{
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);

      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    } catch (e) {
      SnackBar(content: Text("$e") );
    }
  }
  
}