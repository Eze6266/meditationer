// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

class WhiteMusicPlayer extends StatefulWidget {
  const WhiteMusicPlayer({super.key});

  @override
  State<WhiteMusicPlayer> createState() => _WhiteMusicPlayerState();
}

class _WhiteMusicPlayerState extends State<WhiteMusicPlayer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 10, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(100),
                        elevation: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(100),
                      elevation: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffb6b8bf),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Image(
                width: 230,
                height: 230,
                image: AssetImage('assets/disc.png'),
              ),
              SizedBox(height: 40),
              Text(
                'Stille Tider',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'HelveticaNeue',
                  color: Color(0xff3f414e),
                ),
              ),
              SizedBox(height: 12),
              Text(
                '7 DAGER MED PRO',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'HelveticaNeue',
                  color: Color(0xffa0a3b1),
                ),
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    size: 40,
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                  Icon(
                    size: 45,
                    Icons.pause_circle_outline,
                    color: Colors.black,
                  ),
                  Icon(
                    size: 40,
                    Icons.tune_outlined,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10 * size.width / 100),
                child: ProgressBar(
                  progressBarColor: Colors.black,
                  bufferedBarColor: Color.fromRGBO(0, 0, 0, 0.3),
                  baseBarColor: Color.fromRGBO(0, 0, 0, 0.3),
                  thumbColor: Colors.black,
                  thumbRadius: 8,
                  progress: Duration(milliseconds: 1000),
                  buffered: Duration(milliseconds: 2000),
                  total: Duration(milliseconds: 5000),
                  onSeek: (duration) {
                    print('User selected a new time: $duration');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
