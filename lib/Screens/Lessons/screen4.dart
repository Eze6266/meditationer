import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/Screens/Lessons/LessonScreen.dart';
import 'package:meditation_app/Screens/Lessons/lessonProvider.dart';
import 'package:meditation_app/Screens/lesson_details.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:provider/provider.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    final lessonProvider= Provider.of<LessonProvider>(context);
    final alle=lessonProvider.alle;
    final sove= lessonProvider.sove;
    final historie =lessonProvider.historie;
    final engste= lessonProvider.engste;
    final screenNumber=lessonProvider.screenNumber;
    
    Size size = MediaQuery.of(context).size;
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
                          Provider.of<LessonProvider>(context, listen: false).changeLesson(alleNew: true, mingNew: false, engsteNew: false, soveNew: false, historieNew: false, screenNumberNew: 1);
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
                         
                           Provider.of<LessonProvider>(context, listen: false).changeLesson(alleNew: false, mingNew: false, engsteNew: true, soveNew: false, historieNew: false, screenNumberNew: 3);
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
                         
                           Provider.of<LessonProvider>(context, listen: false).changeLesson(alleNew: false, mingNew: false, engsteNew: false, soveNew: true, historieNew: false, screenNumberNew: 3);
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
                          
                          Provider.of<LessonProvider>(context,listen: false).changeLesson(alleNew: false, mingNew: false, engsteNew: false, soveNew: false, historieNew: true, screenNumberNew: 4);
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
}