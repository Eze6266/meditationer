import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/utils/usernameProvider.dart';
import 'package:provider/provider.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final FirebaseAuth auth = FirebaseAuth.instance;
final User? user = auth.currentUser;

Future<void> addUser(String username) async {
  if (user == null) {
    throw FirebaseAuthException(
        code: 'not_authenticated',
        message: 'You must be authenticated to add a user.');
  }

  final DocumentReference<Map<String, dynamic>> userRef =
      _firestore.collection('users').doc(user?.uid);

  await userRef.set(
    {'username': username},
    SetOptions(merge: true),
  );
}

Future<String> getUsername(BuildContext context) async {
  if (user == null) {
    throw FirebaseAuthException(
        code: 'not_authenticated',
        message: 'You must be authenticated to get the username.');
  }

  final DocumentReference<Map<String, dynamic>> userRef =
      _firestore.collection('users').doc(user?.uid);

  final DocumentSnapshot<Map<String, dynamic>> snapshot = await userRef.get();
  final data = snapshot.data();
  final String? username = data?['username'];

  if (username == null) {
    throw Exception('Username not found');
  }

  Provider.of<UsernameProvider>(context, listen: false).addUserName(username);

  return username;
}

Future<void> deleteUser(BuildContext context) async {
  try {
    // Delete user data in Firestore
    final userRef =
        FirebaseFirestore.instance.collection('users').doc(user?.uid);
    await userRef.delete();

    // Delete user from Firebase Authentication
    await FirebaseAuth.instance.currentUser?.delete();

    Navigator.pushNamedAndRemoveUntil(
      context,
      '/login',
      (route) => false, // remove all previous routes from stack
    );
  } catch (error) {
    print('Error deleting user: $error');
  }
}
