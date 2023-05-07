// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/Auth/firestore_services.dart';
import 'package:meditation_app/Screens/Home/angst.dart';
import 'package:meditation_app/Screens/Home/vekst.dart';
import 'package:meditation_app/Screens/MusicScreens/whiteMusicPlayer.dart';

import 'package:meditation_app/Screens/Home/focus.dart';
import 'package:meditation_app/Screens/Home/yoga.dart';
import 'package:meditation_app/utils/usernameProvider.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getUsername(context);
    
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final username =Provider.of<UsernameProvider>(context, listen: true).username;
    return Scaffold(
      backgroundColor: Color(0xff236559),
      body: Padding(
        padding: EdgeInsets.only(top: 35.h),
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
                padding:  EdgeInsets.only(left: 22.w, top: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hei $username',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      'Vi ønsker deg en fin dag',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
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
                padding: EdgeInsets.only(left: 43.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Anbefalt',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => FocusScreen()));
                            },
                            child: HomeContainers(
                              imgUrl: 'assets/fokus.png',
                              titleText: 'Fokus',
                              categoryText: 'MEDITASJON',
                              
                            ),
                          ),
                          SizedBox(width: 8.w),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => YogaScreen()));
                            },
                            child: HomeContainers(
                              imgUrl: 'assets/yoga.png',
                              titleText: 'Yoga',
                              categoryText: 'MEDITASJON',
                              
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AngstScreen()));
                      },
                      child: HomeContainers(
                        imgUrl: 'assets/angst.png',
                        titleText: 'Angst',
                        categoryText: 'MEDITASJON',
                        
                      ),
                    ),
                    SizedBox(width: 8.w),
                    GestureDetector(
                      onTap: (){
                         Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => VekstScreen()));
                      },
                      child: HomeContainers(
                        imgUrl: 'assets/vek.png',
                        titleText: 'Vekst',
                        categoryText: 'MEDITASJON',
                        
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeContainers extends StatelessWidget {
  HomeContainers({
    super.key,
    required this.imgUrl,
    required this.categoryText,
     this.timeText,
    required this.titleText,
  });
  String imgUrl;
  String titleText;
  String categoryText;
  String? timeText;

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
        SizedBox(height: 8),
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
            
          ],
        ),
      ],
    );
  }
}
