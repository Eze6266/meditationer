// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/Screens/Lessons/lessonProvider.dart';
import 'package:meditation_app/Screens/Lessons/screen1.dart';
import 'package:meditation_app/Screens/Lessons/screen2.dart';
import 'package:meditation_app/Screens/Lessons/screen4.dart';
import 'package:meditation_app/Screens/Lessons/Egen.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:provider/provider.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({super.key});

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  @override
  Widget build(BuildContext context) {
    final lessonProvider = Provider.of<LessonProvider>(context);
    int screenNumber = lessonProvider.screenNumber;
    Size size = MediaQuery.of(context).size;
    if (screenNumber == 1) {
      return Screen1();
    } else if (screenNumber == 2) {
      return Screen2();
    } else if (screenNumber == 3) {
      return Screen4();
    }
    return SizedBox();
  }
}

class HistorieContainers extends StatelessWidget {
  HistorieContainers({
    super.key,
    required this.imgUrl,
    required this.text,
  });
  String imgUrl;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage('$imgUrl'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 12.w, bottom: 15.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$text',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'HelveticaNeue',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LessonTopStoriesCard extends StatelessWidget {
  LessonTopStoriesCard({
    super.key,
    required this.alle,
    required this.engste,
    required this.historie,
    required this.ming,
    required this.sove,
    required this.imgUrl,
    required this.txt,
  });

  final bool alle;
  bool ming = false;
  bool engste = false;
  bool sove = false;
  bool historie = false;
  String imgUrl;
  String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              color: alle ? Color(0xff236559) : Color(0xffa0a3b1),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Image(
                color: Colors.white,
                image: AssetImage('$imgUrl'),
              ),
            ),
          ),
          SizedBox(height: 5),
          Align(
            alignment: Alignment.center,
            child: Text(
              '$txt',
              style: TextStyle(
                color: alle ? Color(0xff3f414e) : Color(0xffa0a3b1),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'HelveticaNeue',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
