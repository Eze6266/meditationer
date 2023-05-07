import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/Screens/Lessons/dailyRo.dart';
import 'package:meditation_app/Screens/Lessons/lessonProvider.dart';
import 'package:meditation_app/Widget/audiolistScreen.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    final lessonProvider= Provider.of<LessonProvider>(context);
    final alle=lessonProvider.alle;
    final sove= lessonProvider.sove;
    final historie =lessonProvider.historie;
    final engste= lessonProvider.engste;
    final screenNumber=lessonProvider.screenNumber;

    final setProvider= Provider.of<LessonProvider>(context, listen: false);
    
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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Meditere',
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
                  'La oss sette tankene våre med ro.',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Color(0xffa1a4b2),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
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
                        setProvider.changeLesson(alleNew: true, mingNew: false, engsteNew: false, soveNew: false, historieNew: false, screenNumberNew: 1);
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
                        setProvider.changeLesson(alleNew: false, mingNew: false, engsteNew: true, soveNew: false, historieNew: false, screenNumberNew: 2);
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
                                borderRadius: BorderRadius.circular(25),
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
                       setProvider.changeLesson(alleNew: false, mingNew: false, engsteNew: false, soveNew: false, historieNew: true, screenNumberNew: 3);
                      },
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 65.h,
                              width: 65.h,
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
              SizedBox(height: 25.h),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AudioListScreen(text: "Daggleing Tanke Meditasjon", categoryName: "Daggleing-Tanke"),));
                },
                child: Container(
                  width: 87 * size.width / 100,
                  height: 100.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/dagback.png'),
                    ),
                    borderRadius: BorderRadius.circular(10.r),
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
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            'MEDITASJON',
                            style: TextStyle(
                              color: Color(0xffebeaec),
                              fontFamily: 'HelveticaNeue',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      Image(
                        image: AssetImage('assets/play.png'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AudioListScreen(text: "Veiledet meditasjon med pro", categoryName: "Veiledet-Meditasjon-Med-Pro"),));
                    },
                    child: Container(
                      height: 180.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('assets/dagger.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(bottom: 8.h),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Veiledet meditasjon med pro',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'HelveticaNeue',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AudioListScreen(text: "Stress Letteise Meditasjon", categoryName: "Stress-Letteise"),));
                    },
                    child: Container(
                      height: 180.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('assets/tree.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(bottom: 8.h),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Stress Letteise',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'HelveticaNeue',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DailyRoScreen()));
                },
                child: Container(
                  width: 87 * size.width / 100,
                  height: 100.h,
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
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            'APR 30 + PAUSE PRAKSIS',
                            style: TextStyle(
                              color: Color(0xff5a6175),
                              fontFamily: 'HelveticaNeue',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      Image(
                        image: AssetImage('assets/play2.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}