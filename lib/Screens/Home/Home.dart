// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/Screens/whiteMusicPlayer.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff236559),
      body: Padding(
        padding: EdgeInsets.only(top: 35),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff236559),
            image: DecorationImage(
              image: AssetImage("assets/home.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hei Anna',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      'Vi ønsker deg en fin dag',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 22 * size.height / 100),
              Padding(
                padding: EdgeInsets.only(left: 43),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Anbefalt',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                  PageAnimationTransition(
                                      page: WhiteMusicPlayer(),
                                      pageAnimationType:
                                          BottomToTopTransition()));
                            },
                            child: HomeContainers(
                              imgUrl: 'assets/fokus.png',
                              titleText: 'Fokus',
                              categoryText: 'MEDITASJON',
                              timeText: '3-10 MIN',
                            ),
                          ),
                          SizedBox(width: 8),
                          HomeContainers(
                            imgUrl: 'assets/yoga.png',
                            titleText: 'Yoga',
                            categoryText: 'MEDITASJON',
                            timeText: '3-10 MIN',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeContainers(
                      imgUrl: 'assets/angst.png',
                      titleText: 'Angst',
                      categoryText: 'MEDITASJON',
                      timeText: '2-5 MIN',
                    ),
                    SizedBox(width: 8),
                    HomeContainers(
                      imgUrl: 'assets/vek.png',
                      titleText: 'Vekst',
                      categoryText: 'MEDITASJON',
                      timeText: '5-10 MIN',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.only(top: 18.0),
    //   child: Container(
    //     height: double.infinity,
    //     width: double.infinity,
    //     decoration: BoxDecoration(

    //       image: DecorationImage(
    //         image: AssetImage('assets/home.png'),
    //         fit: BoxFit.cover,
    //       ),
    //     ),
    //     child: Scaffold(
    //       backgroundColor: Colors.transparent,
    //       body: Padding(
    //         padding: const EdgeInsets.only(top: 20.0),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.only(left: 42),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     'Hei Anna',
    //                     style: GoogleFonts.montserrat(
    //                       textStyle: TextStyle(
    //                         color: Colors.white,
    //                         fontSize: 28,
    //                         fontWeight: FontWeight.w600,
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(height: 14),
    //                   Text(
    //                     'Vi ønsker deg en fin dag',
    //                     style: GoogleFonts.montserrat(
    //                       textStyle: TextStyle(
    //                         color: Colors.white,
    //                         fontSize: 18,
    //                         fontWeight: FontWeight.w400,
    //                         fontStyle: FontStyle.normal,
    //                       ),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ),
    //             SizedBox(height: 22 * size.height / 100),
    //             Padding(
    //               padding: EdgeInsets.only(left: 43),
    //               child: Align(
    //                 alignment: Alignment.centerLeft,
    //                 child: Text(
    //                   'Anbefalt',
    //                   style: GoogleFonts.montserrat(
    //                     textStyle: TextStyle(
    //                       color: Colors.black,
    //                       fontSize: 24,
    //                       fontWeight: FontWeight.w500,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             SizedBox(height: 20),
    //             Padding(
    //               padding: EdgeInsets.symmetric(horizontal: 8),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   HomeContainers(
    //                     imgUrl: 'assets/fokus.png',
    //                     titleText: 'Fokus',
    //                     categoryText: 'MEDITASJON',
    //                     timeText: '3-10 MIN',
    //                   ),
    //                   SizedBox(width: 8),
    //                   HomeContainers(
    //                     imgUrl: 'assets/yoga.png',
    //                     titleText: 'Yoga',
    //                     categoryText: 'MEDITASJON',
    //                     timeText: '3-10 MIN',
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             SizedBox(height: 20),
    //             Padding(
    //               padding: EdgeInsets.symmetric(horizontal: 8),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   HomeContainers(
    //                     imgUrl: 'assets/angst.png',
    //                     titleText: 'Angst',
    //                     categoryText: 'MEDITASJON',
    //                     timeText: '2-5 MIN',
    //                   ),
    //                   SizedBox(width: 8),
    //                   HomeContainers(
    //                     imgUrl: 'assets/vek.png',
    //                     titleText: 'Vekst',
    //                     categoryText: 'MEDITASJON',
    //                     timeText: '5-10 MIN',
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
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
