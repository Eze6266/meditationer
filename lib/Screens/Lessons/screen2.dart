import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/Screens/Lessons/LessonScreen.dart';
import 'package:meditation_app/Screens/Lessons/angst_ally_screen.dart';
import 'package:meditation_app/Screens/Lessons/lessonProvider.dart';
import 'package:meditation_app/Screens/Lessons/stile_visualisering.dart';
import 'package:meditation_app/Widget/audiolistScreen.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    final lessonProvider = Provider.of<LessonProvider>(context);
    final alle = lessonProvider.alle;
    final sove = lessonProvider.sove;
    final historie = lessonProvider.historie;
    final engste = lessonProvider.engste;
    final screenNumber = lessonProvider.screenNumber;

    final setProvider = Provider.of<LessonProvider>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/medback.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(top: 50.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Angst',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xff3f414e),
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Engstelig? La oss hjelpe deg med å fikse det',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xffa1a4b2),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 12.w),
                      GestureDetector(
                        onTap: () {
                          setProvider.changeLesson(
                              alleNew: true,
                              mingNew: false,
                              engsteNew: false,
                              soveNew: false,
                              historieNew: false,
                              screenNumberNew: 1);
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65.h,
                                width: 65.w,
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
                              SizedBox(height: 5.h),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Alle',
                                  style: TextStyle(
                                    color: alle
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 24.w),
                      GestureDetector(
                        onTap: () {
                          setProvider.changeLesson(
                              alleNew: false,
                              mingNew: false,
                              engsteNew: true,
                              soveNew: false,
                              historieNew: false,
                              screenNumberNew: 2);
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                  color: engste
                                      ? Color(0xff236559)
                                      : Color(0xffa0a3b1),
                                  borderRadius: BorderRadius.circular(25.r),
                                ),
                                child: Center(
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('assets/sad.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Engstelig',
                                  style: TextStyle(
                                    color: engste
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 24.w),
                      GestureDetector(
                        onTap: () {
                          setProvider.changeLesson(
                              alleNew: false,
                              mingNew: false,
                              engsteNew: false,
                              soveNew: false,
                              historieNew: true,
                              screenNumberNew: 3);
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                  color: historie
                                      ? Color(0xff236559)
                                      : Color(0xffa0a3b1),
                                  borderRadius: BorderRadius.circular(25.r),
                                ),
                                child: Center(
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('assets/book.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Historie',
                                  style: TextStyle(
                                    color: historie
                                        ? Color(0xff3f414e)
                                        : Color(0xffa0a3b1),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                    ],
                  ),
                ),
                SizedBox(height: 50.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Anbefales ',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => StilleVisualiseringScreen()));
                  },
                  child: Hero(
                    tag: "visualisering",
                    child: Container(
                      width: 91 * size.width / 100,
                      height: 200.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/spirit.png'),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 30.h, left: 25.w),
                        child: ListView(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          physics: BouncingScrollPhysics(),
                          children: [
                            SizedBox(height: 120.h),
                            Text(
                              'Stille visualisering',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'HelveticaNeue',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AudioListScreen(
                                text:
                                    "Meditasjon for å hjelpe mentale utfordringer",
                                categoryName: "Mind-Oasis"),
                          ),
                        );
                      },
                      child: HistorieContainers(
                        imgUrl: 'assets/for.png',
                        text: 'Mind Oasis',
                      ),
                    ),
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => AngstAllyScreen()),
                        );
                      },
                      child: Hero(
                        tag: "angstAlly",
                        child: HistorieContainers(
                          imgUrl: 'assets/dol.png',
                          text: 'Angst Ally',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
