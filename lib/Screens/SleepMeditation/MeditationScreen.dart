// ignore_for_file: prefer__ructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/Screens/MusicScreens/darkMusicPlayer.dart';
import 'package:meditation_app/Screens/SleepMeditation/Eventyr.dart';
import 'package:meditation_app/Screens/SleepMeditation/moon_cloud.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class MeditationScreen extends StatefulWidget {
  MeditationScreen({super.key});

  @override
  State<MeditationScreen> createState() => _MeditationScreenState();
}

class _MeditationScreenState extends State<MeditationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff1f265e),
      body: Padding(
        padding: EdgeInsets.only(top: 35.h),
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backdark.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 60.h),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Sovemusikk',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Beroligende sengetidssanger som\nhjelper deg med å sove',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DarkMusicPlayer(
                                    audioUrl:
                                        "https://firebasestorage.googleapis.com/v0/b/indre-ro.appspot.com/o/audios%2Fy2mate.com%20-%20Forest%20at%20Night%20with%20owl%20sound%20effect%20No%20copyright.mp3?alt=media&token=be41be3f-08dd-4a0d-93e7-1d036770bc6e",
                                    category: "Musikk",
                                    title: "Søt Søvn",
                                  )));
                        },
                        child: MeditationCard(
                          imgUrl: 'assets/bird.png',
                          mainText: 'Søt Søvn',
                          type: 'MUSIKK',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DarkMusicPlayer(
                                    audioUrl:
                                        "https://firebasestorage.googleapis.com/v0/b/indre-ro.appspot.com/o/audios%2Fy2mate.com%20-%2010%20minutes%20The%20Little%20Power%20Nap%20Series%20Sleep%20and%20Relaxation%20Music%203.mp3?alt=media&token=a3e46351-1d3b-4980-8026-56e87884c5ef",
                                    category: "Musikk",
                                    title: "Nattoya",
                                  )));
                        },
                        child: MeditationCard(
                          imgUrl: 'assets/cloud.png',
                          mainText: 'Nattoya',
                          type: 'MUSIKK',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Søvnhistorier',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Beroligende sengetidshistorier som\nhjelper deg med å sove',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => EventyrLessonDetails(),));
                        },
                        child: Hero(
                          tag: "Eventyr",
                          child: MeditationCard(
                            imgUrl: 'assets/birdsleep.png',
                            mainText: 'Eventyr tid',
                            type: 'HISTORIE',
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MoonCloudLessonDetails(),));
                        },
                        child: Hero(
                          tag: "MoonCloud",
                          child: MeditationCard(
                            imgUrl: 'assets/moon.png',
                            mainText: 'Moon Clouds',
                            type: 'HISTORIE',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MeditationCard extends StatelessWidget {
  MeditationCard({
    super.key,
    required this.imgUrl,
    required this.mainText,
    required this.type,
  });
  String imgUrl;
  String mainText;

  String type;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 130.h,
          width: 160.w,
          child: Image(
            image: AssetImage('$imgUrl'),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          '$mainText',
          style: TextStyle(
            color: Color(0xffe6e7f2),
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 5.h),
        Row(
          children: [
            SizedBox(width: 3.w),
            Image(
              image: AssetImage('assets/dot.png'),
            ),
            SizedBox(width: 3.w),
            Text(
              '$type',
              style: TextStyle(
                color: Color(0xff98a1bd),
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class HomeContainers extends StatelessWidget {
  HomeContainers({
    super.key,
    required this.imgUrl,
    required this.categoryText,
    required this.timeText,
    required this.titleText,
  });
  String imgUrl;
  String titleText;
  String categoryText;
  String timeText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 113.h,
          width: 155.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('$imgUrl'),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        SizedBox(height: 8.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '$titleText',
            style: TextStyle(
              fontFamily: 'HelveticaNeue',
              color: Color(0xff3F414E),
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 6.h),
        Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$categoryText',
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  color: Color(0xffA1A4B2),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$timeText',
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  color: Color(0xffA1A4B2),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
