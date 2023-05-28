import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/Auth/firestore_services.dart';
import 'package:meditation_app/Screens/Home/Home.dart';
import 'package:meditation_app/Screens/Home/ScreensHandler.dart.dart';

class Auth {
  
  void createNewUser( final String username,final String email, final String password, final BuildContext context)async{
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      await addUser(username);

      Navigator.pushNamedAndRemoveUntil(
      context,
      '/main_home',
      (route) => false, // remove all previous routes from stack
    );
    } catch (e) {
      SnackBar(content: Text("$e") );
    }
  }

  void signInUser(String email, String password, BuildContext context)async{
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);

      
      Navigator.pushNamedAndRemoveUntil(
      context,
      '/main_home',
      (route) => false, // remove all previous routes from stack
    );
    } catch (e) {
      SnackBar(content: Text("$e") );
    }
  }

 

Future<void> changePassword(String newPassword, BuildContext context) async {
  try {
    // Get the currently logged in user
    final User user = FirebaseAuth.instance.currentUser!;

    // Update the user's password
    await user.updatePassword(newPassword);

    // Sign out the user after changing the password
    await FirebaseAuth.instance.signOut();
    
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "The password provided is too weak.",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF44709A),
            ),
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Color(0xFFD4E4F4),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Color(0xFF53A3DA))),
          margin: EdgeInsets.fromLTRB(20, 80, 20, 700),
        ),
      );
    } else {
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Failed to change password: $e",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF44709A),
            ),
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Color(0xFFD4E4F4),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Color(0xFF53A3DA))),
          margin: EdgeInsets.fromLTRB(20, 80, 20, 700),
        ),
      );
    }
  } catch (e) {
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Failed to change password: $e",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF44709A),
          ),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color(0xFFD4E4F4),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Color(0xFF53A3DA))),
        margin: EdgeInsets.fromLTRB(20, 80, 20, 700),
      ),
    );
  }
}
  
}