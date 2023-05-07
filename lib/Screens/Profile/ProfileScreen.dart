// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/Screens/Settings/Settings.dart';
import 'package:meditation_app/Widget/statistics.dart';
import 'package:meditation_app/utils/usernameProvider.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late num monCount;
  late num tuesCount;
  late num wedCount;
  late num thursCount;
  late num friCount;
  late num satCount;
  late num sunCount;
  num total = 0;

  Future<void> _loadStat() async {
    final prefs = await SharedPreferences.getInstance();

    monCount = prefs.getInt('monCount') ?? 0;
    tuesCount = prefs.getInt('tueCount') ?? 0;
    wedCount = prefs.getInt('wedCount') ?? 0;
    thursCount = prefs.getInt('thuCount') ?? 0;
    friCount = prefs.getInt('friCount') ?? 0;
    satCount = prefs.getInt('satCount') ?? 0;
    sunCount = prefs.getInt('sunCount') ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    final usernameProvider = Provider.of<UsernameProvider>(context);
    _loadStat();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Padding(
                padding:  EdgeInsets.only(top: 15.h, right: 10.w, left: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Settings()));
                      },
                      child: Icon(
                        Icons.settings_outlined,
                        color: Color(0xffbbc1c8),
                        size: 30.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              Image(
                image: AssetImage('assets/girlie.png'),
              ),
              SizedBox(height: 13.h),
              Text(
                usernameProvider.username,
                style: TextStyle(
                  color: Color(0xff3f414e),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 20.h),
              Container(
                height: 115.h,
                width: 320.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.r),
                  color: Color(0xfff4f5f6),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image(
                            image: AssetImage('assets/greenboyflow.png'),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Meditation',
                            style: TextStyle(
                              color: Color(0xff3f414e),
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 15.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Okter',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          FutureBuilder(
                              future: _loadStat(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<dynamic> snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  total = monCount +
                                      tuesCount +
                                      wedCount +
                                      thursCount +
                                      friCount +
                                      satCount +
                                      sunCount;
                                  return Text(
                                    total.toString(),
                                    style: TextStyle(
                                      color: Color(0xff3f414e),
                                      fontSize: 28.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  );
                                } else {
                                  return  CupertinoActivityIndicator(
                                    color: Colors.black87,
                                  );
                                }
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Statistikk',
                      style: TextStyle(
                        color: Color(0xff3f414e),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Forrige Uke',
                          style: TextStyle(
                            color: Color(0xff3f414e),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 3.w),
                        Icon(
                          Icons.keyboard_arrow_down,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              // Image(
              //   image: AssetImage('assets/bar.png'),
              // ),
              LineChartSample2()
            ],
          ),
        ),
      ),
    );
  }
}
