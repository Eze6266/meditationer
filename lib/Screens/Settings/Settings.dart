// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/Screens/Settings/change_password.dart';
import 'package:meditation_app/Screens/Settings/change_username.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(100.r),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Image(
                      height: 50.h,
                      width: 50.w,
                      image: AssetImage('assets/girlie.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Innstillinger',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xff3f414e),
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Kontoinnstillinger',
                    style: TextStyle(
                      color: Color(0xff236559),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChangeUsernameScreen(),
                  ));
                },
                child: SettingsListTile(
                  imgUrl: 'assets/user.png',
                  mainText: 'Endre brukernavn',
                  subText: 'Endre ditt eksisterende brukernavn',
                  color: Color(0xffa6d6ff),
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder:(context) => ChangePasswordScreen(), )),
                child: SettingsListTile(
                  imgUrl: 'assets/lock.png',
                  mainText: 'Bytt Passord',
                  subText: 'Endre ditt nåværende passord',
                  color: Color(0xff00c48c),
                ),
              ),
              SizedBox(height: 20.h),
              SettingsListTile(
                imgUrl: 'assets/envelope.png',
                mainText: 'Send tilbakemelding',
                subText: 'Del tankene dine',
                color: Color(0xffffdf92),
              ),
              SizedBox(height: 20.h),
              SettingsListTile(
                imgUrl: 'assets/eye.png',
                mainText: 'Privacy Policy',
                subText: 'Lorem Ipsum dolor sit amet',
                color: Color(0xff96ffe1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsListTile extends StatelessWidget {
  SettingsListTile({
    super.key,
    required this.color,
    required this.imgUrl,
    required this.mainText,
    required this.subText,
  });
  String mainText;
  String subText;
  String imgUrl;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(100),
              color: color,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('$imgUrl'),
              ),
            ),
          ),
          SizedBox(width: 20.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$mainText',
                style: TextStyle(
                  color: Color(0xff3f414e),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'HelveticaNeue',
                ),
              ),
              SizedBox(height: 3.h),
              Text(
                '$subText',
                style: TextStyle(
                  color: Color(0xff3f414e),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'HelveticaNeue',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
