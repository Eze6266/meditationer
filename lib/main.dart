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
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

class MyApp extends StatefulWidget {
  final bool isFirstTime;

  MyApp({required this.isFirstTime});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  Future<void> preCacheImages ()async{
    
    await precacheImage(AssetImage("assets/home.png"), context);
    await precacheImage(AssetImage("assets/fokus.png"), context);
    await precacheImage(AssetImage("assets/yoga.png"), context);
    await precacheImage(AssetImage("assets/angst.png"), context);
    await precacheImage(AssetImage("assets/vek.png"), context);
    await precacheImage(AssetImage("assets/medback.png"), context);
    await precacheImage(AssetImage("assets/fan.png"), context);
    await precacheImage(AssetImage("assets/sad.png"), context);
    await precacheImage(AssetImage("assets/book.png"), context);
    await precacheImage(AssetImage("assets/dagback.png"), context);
    await precacheImage(AssetImage("assets/play.png"), context);
    await precacheImage(AssetImage("assets/dagger.png"), context);
    await precacheImage(AssetImage("assets/tree.png"), context);
    await precacheImage(AssetImage("assets/dailyro.png"), context);
    await precacheImage(AssetImage("assets/play2.png"), context);
    await precacheImage(AssetImage("assets/spirit.png"), context);
    await precacheImage(AssetImage("assets/for.png"), context);
    await precacheImage(AssetImage("assets/dol.png"), context);
    await precacheImage(AssetImage("assets/sunrise.png"), context);
    await precacheImage(AssetImage("assets/stone.png"), context);
    await precacheImage(AssetImage("assets/iron.png"), context);
    await precacheImage(AssetImage("assets/dolphins.jpg"), context);
    await precacheImage(AssetImage("assets/still_visualization.jpg"), context);
    await precacheImage(AssetImage("assets/backdark.png"), context);
    await precacheImage(AssetImage("assets/bird.png"), context);
    await precacheImage(AssetImage("assets/cloud.png"), context);
    await precacheImage(AssetImage("assets/birdsleep.png"), context);
    await precacheImage(AssetImage("assets/moon.png"), context);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    preCacheImages();
  }

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsernameProvider()),
        ChangeNotifierProvider(create: (_)=>LessonProvider()),
        ChangeNotifierProvider(create: (_) => Navigation()),
      ],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          routes: {
            '/login': (context) => LoginScreen(),
            '/signup': (context) => SignUpScree(),
          },
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: widget.isFirstTime
              ? WelcomeScreen()
              : FirebaseAuth.instance.currentUser != null
                  ? ScreenHandler()
                  : SignUpScree(),
        ),
        designSize: const Size(428, 921),
      ),
    );
  }
}

// ...

