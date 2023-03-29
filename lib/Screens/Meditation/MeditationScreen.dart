// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/Screens/MusicScreens/darkMusicPlayer.dart';
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
        padding: EdgeInsets.only(top: 35),
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
                  padding: const EdgeInsets.only(top: 60),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Sovemusikk',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Beroligende sengetidssanger som\nhjelper deg med å sove',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(PageAnimationTransition(
                              page: DarkMusicPlayer(),
                              pageAnimationType: BottomToTopTransition()));
                        },
                        child: MeditationCard(
                          imgUrl: 'assets/bird.png',
                          mainText: 'Søt Søvn',
                          subText: '45 MIN',
                          type: 'MUSIKK',
                        ),
                      ),
                      MeditationCard(
                        imgUrl: 'assets/cloud.png',
                        mainText: 'Nattoya',
                        subText: '60 MIN',
                        type: 'MUSIKK',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Søvnhistorier',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Beroligende sengetidshistorier som\nhjelper deg med å sove',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MeditationCard(
                        imgUrl: 'assets/birdsleep.png',
                        mainText: 'Eventyr tid',
                        subText: '30 MIN',
                        type: 'HISTORIE',
                      ),
                      MeditationCard(
                        imgUrl: 'assets/moon.png',
                        mainText: 'Moon Clouds',
                        subText: '45 MIN',
                        type: 'HISTORIE',
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
    required this.subText,
    required this.type,
  });
  String imgUrl;
  String mainText;
  String subText;
  String type;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 130,
          width: 160,
          child: Image(
            image: AssetImage('$imgUrl'),
          ),
        ),
        SizedBox(height: 5),
        Text(
          '$mainText',
          style: TextStyle(
            color: Color(0xffe6e7f2),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Text(
              '$subText',
              style: TextStyle(
                color: Color(0xff98a1bd),
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 3),
            Image(
              image: AssetImage('assets/dot.png'),
            ),
            SizedBox(width: 3),
            Text(
              '$type',
              style: TextStyle(
                color: Color(0xff98a1bd),
                fontSize: 11,
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
          height: 113,
          width: 155,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('$imgUrl'),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '$titleText',
            style: TextStyle(
              fontFamily: 'HelveticaNeue',
              color: Color(0xff3F414E),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$categoryText',
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  color: Color(0xffA1A4B2),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$timeText',
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  color: Color(0xffA1A4B2),
                  fontSize: 11,
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
