// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:meditation_app/Screens/Settings.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 10, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Color(0xff15433b),
                        size: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(PageAnimationTransition(
                              page: Settings(),
                              pageAnimationType: BottomToTopTransition()));
                        },
                        child: Icon(
                          Icons.settings_outlined,
                          color: Color(0xffbbc1c8),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Image(
                  image: AssetImage('assets/girlie.png'),
                ),
                SizedBox(height: 13),
                Text(
                  'Ann Olsen',
                  style: TextStyle(
                    color: Color(0xff3f414e),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),
                ProfileContainers(
                  imgUrl: 'assets/yogaboy.png',
                  mainText: 'Yoga',
                  firstText: 'Okter',
                  time: '1:23:04',
                ),
                SizedBox(height: 20),
                ProfileContainers(
                  imgUrl: 'assets/greenboyflow.png',
                  mainText: 'Meditasjon',
                  firstText: 'økter',
                  time: '0:55:04',
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Statistikk',
                        style: TextStyle(
                          color: Color(0xff3f414e),
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Forrige Uke',
                            style: TextStyle(
                              color: Color(0xff3f414e),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.keyboard_arrow_down,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Image(
                  image: AssetImage('assets/bar.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileContainers extends StatelessWidget {
  ProfileContainers({
    super.key,
    required this.firstText,
    required this.imgUrl,
    required this.mainText,
    required this.time,
  });
  String mainText;
  String imgUrl;
  String time;
  String firstText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Color(0xfff4f5f6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image(
                  image: AssetImage('$imgUrl'),
                ),
                SizedBox(width: 10),
                Text(
                  '$mainText',
                  style: TextStyle(
                    color: Color(0xff3f414e),
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$firstText',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '7',
                  style: TextStyle(
                    color: Color(0xff3f414e),
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Tid',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '$time',
                  style: TextStyle(
                    color: Color(0xff3f414e),
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
