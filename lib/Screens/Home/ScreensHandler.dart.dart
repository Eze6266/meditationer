// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Lessons/LessonScreen.dart';
import '../SleepMeditation/MeditationScreen.dart';
import '../Profile/ProfileScreen.dart';
import 'Home.dart';

class ScreenHandler extends StatefulWidget {
  const ScreenHandler({super.key});

  @override
  State<ScreenHandler> createState() => _ScreenHandlerState();
}

class _ScreenHandlerState extends State<ScreenHandler> {
  int myIndex = 0;
  List<Widget> widgetList = [
    HomeScreen(),
    LessonScreen(),
    MeditationScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widgetList[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 6,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/homenav.svg',
              color: Colors.black,
            ),
            label: '',
            icon: SvgPicture.asset(
              'assets/homenav.svg',
              color: Color(0xff89909a),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/flowery.svg',
              color: Colors.black,
            ),
            label: '',
            icon: SvgPicture.asset(
              'assets/flowery.svg',
              color: Color(0xff89909a),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/sky.svg',
              color: Colors.black,
            ),
            label: '',
            icon: SvgPicture.asset(
              'assets/sky.svg',
              color: Color(0xff89909a),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/person.svg',
              color: Colors.black,
            ),
            label: '',
            icon: SvgPicture.asset(
              'assets/person.svg',
              color: Color(0xff89909a),
            ),
          ),
        ],
      ),
    );
  }
}
