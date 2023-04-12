import 'package:flutter/material.dart';
import 'package:meditation_app/Screens/OnboardingScreen.dart';
import 'package:provider/provider.dart';

import 'Screens/SplashScreen.dart';
import 'utils/navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (_) => Navigation(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => Navigation(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OnBoardingScreen(),
      ),
    );
  }
}
