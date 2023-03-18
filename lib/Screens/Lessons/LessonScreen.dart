// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/Screens/lesson_details.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({super.key});

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  bool alle = true;
  bool ming = false;
  bool engste = false;
  bool sove = false;
  bool historie = false;
  int screenNumber = 1;

  Widget bodywidget(Size size) {
    if (screenNumber == 1) {
      return Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/medback.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Meditere',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xff3f414e),
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'La oss sette tankene våre med ro.',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xffa1a4b2),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            alle = true;
                            sove = false;
                            historie = false;
                            ming = false;
                            engste = false;
                            screenNumber = 1;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: alle
                                      ? Color(0xff236559)
                                      : Color(0xffa0a3b1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('assets/fan.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Alle',
                                  style: TextStyle(
                                    color: alle
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            alle = false;
                            sove = false;
                            historie = false;
                            ming = true;
                            engste = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: ming
                                      ? Color(0xff236559)
                                      : Color(0xffa0a3b1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('assets/love.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Min',
                                  style: TextStyle(
                                    color: ming
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            alle = false;
                            sove = false;
                            historie = false;
                            ming = false;
                            engste = true;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: engste
                                      ? Color(0xff236559)
                                      : Color(0xffa0a3b1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('assets/sad.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Engstelig',
                                  style: TextStyle(
                                    color: engste
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            alle = false;
                            sove = true;
                            historie = false;
                            ming = false;
                            engste = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: sove
                                      ? Color(0xff236559)
                                      : Color(0xffa0a3b1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('assets/snooze.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Sove',
                                  style: TextStyle(
                                    color: sove
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            alle = false;
                            sove = false;
                            historie = true;
                            ming = false;
                            engste = false;
                            screenNumber = 5;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: historie
                                      ? Color(0xff236559)
                                      : Color(0xffa0a3b1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('assets/book.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Historie',
                                  style: TextStyle(
                                    color: historie
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: 87 * size.width / 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/dagback.png'),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Daggleing Tanke',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'HelveticaNeue',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'MEDITASJON 3-10 MIN',
                            style: TextStyle(
                              color: Color(0xffebeaec),
                              fontFamily: 'HelveticaNeue',
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Image(
                        image: AssetImage('assets/play.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 180,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('assets/dagger.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            '7 Dager Med Ro',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'HelveticaNeue',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 180,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('assets/tree.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Stress Letteise',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'HelveticaNeue',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: 87 * size.width / 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/dailyro.png'),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Daily Ro',
                            style: TextStyle(
                              color: Color(0xff3f414e),
                              fontFamily: 'HelveticaNeue',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'APR 30 + PAUSE PRAKSIS',
                            style: TextStyle(
                              color: Color(0xff5a6175),
                              fontFamily: 'HelveticaNeue',
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Image(
                        image: AssetImage('assets/play2.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else if (screenNumber == 5) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Historie',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xff3f414e),
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Inspirerende lære om selvkjærlighet',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xffa1a4b2),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            alle = true;
                            sove = false;
                            historie = false;
                            ming = false;
                            engste = false;
                            screenNumber = 1;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: alle
                                      ? Color(0xff236559)
                                      : Color(0xffa0a3b1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('assets/fan.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Alle',
                                  style: TextStyle(
                                    color: alle
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            alle = false;
                            sove = false;
                            historie = false;
                            ming = true;
                            engste = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: ming
                                      ? Color(0xff236559)
                                      : Color(0xffa0a3b1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('assets/love.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Min',
                                  style: TextStyle(
                                    color: ming
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            alle = false;
                            sove = false;
                            historie = false;
                            ming = false;
                            engste = true;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: engste
                                      ? Color(0xff236559)
                                      : Color(0xffa0a3b1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('assets/sad.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Engstelig',
                                  style: TextStyle(
                                    color: engste
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            alle = false;
                            sove = true;
                            historie = false;
                            ming = false;
                            engste = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: sove
                                      ? Color(0xff236559)
                                      : Color(0xffa0a3b1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('assets/snooze.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Sove',
                                  style: TextStyle(
                                    color: sove
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            alle = false;
                            sove = false;
                            historie = true;
                            ming = false;
                            engste = false;
                            screenNumber = 5;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: historie
                                      ? Color(0xff236559)
                                      : Color(0xffa0a3b1),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('assets/book.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Historie',
                                  style: TextStyle(
                                    color: historie
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Daglige historier ',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        'Se Alt ',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Color(0xff4a80f0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(PageAnimationTransition(
                        page: LessonDetails(),
                        pageAnimationType: BottomToTopTransition()));
                  },
                  child: Container(
                    width: 91 * size.width / 100,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/sunrise.png'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30, left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Egenkjærlighet',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'HelveticaNeue',
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Koble til deg selv igjen',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'HelveticaNeue',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HistorieContainers(
                      imgUrl: 'assets/stone.png',
                      text: 'Fred',
                    ),
                    SizedBox(width: 15),
                    HistorieContainers(
                      imgUrl: 'assets/iron.png',
                      text: 'Vennlighet',
                    ),
                  ],
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      );
    }
    return SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return bodywidget(size);
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
      height: 180,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage('$imgUrl'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 12, bottom: 15),
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
