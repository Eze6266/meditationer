import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/Auth/firebase_auth_services.dart';
import 'package:meditation_app/Auth/firestore_services.dart';
import 'package:meditation_app/Screens/Home/Home.dart';
import 'package:meditation_app/Screens/Home/ScreensHandler.dart.dart';
import 'package:meditation_app/Screens/Lessons/lessonProvider.dart';
import 'package:meditation_app/Screens/LoginScreen.dart';
import 'package:meditation_app/Screens/OnboardingScreen.dart';
import 'package:meditation_app/Screens/SignUp.dart';
import 'package:meditation_app/Screens/WelcomeScreen.dart';
import 'package:meditation_app/utils/usernameProvider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/SplashScreen.dart';
import 'utils/navigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirstTime = prefs.getBool('isFirstTime') ?? true;
  if (isFirstTime) {
    await prefs.setBool('isFirstTime', false);
  }

  runApp(
    ChangeNotifierProvider(
      create: (_) => Navigation(),
      child: MyApp(isFirstTime: isFirstTime),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool isFirstTime;

  MyApp({required this.isFirstTime});
  // This widget is the root of your application.

  
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsernameProvider()),
        ChangeNotifierProvider(create: (_)=>LessonProvider()),
        ChangeNotifierProvider(create: (_) => Navigation()),
      ],
      child: MaterialApp(
        routes: {
          '/login': (context) => LoginScreen(),
          '/signup': (context) => SignUpScree(),
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: isFirstTime
            ? WelcomeScreen()
            : FirebaseAuth.instance.currentUser != null
                ? ScreenHandler()
                : SignUpScree(),
      ),
    );
  }
}

// ...

