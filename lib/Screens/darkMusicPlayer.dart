// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

class DarkMusicPlayer extends StatefulWidget {
  const DarkMusicPlayer({super.key});

  @override
  State<DarkMusicPlayer> createState() => _DarkMusicPlayerState();
}

class _DarkMusicPlayerState extends State<DarkMusicPlayer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/darkmusic.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 10, left: 20),
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
                            color: Color(0xff03174c),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              Icons.favorite_outline,
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
                  image: AssetImage('assets/birdgroup.png'),
                ),
                SizedBox(height: 40),
                Text(
                  'Søt Søvn',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'HelveticaNeue',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'MUSIKK',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'HelveticaNeue',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      size: 40,
                      Icons.favorite_outline,
                      color: Colors.white,
                    ),
                    Icon(
                      size: 45,
                      Icons.pause_circle_outline,
                      color: Colors.white,
                    ),
                    Icon(
                      size: 40,
                      Icons.tune_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10 * size.width / 100),
                  child: ProgressBar(
                    timeLabelTextStyle: TextStyle(
                      color: Colors.white,
                    ),
                    progressBarColor: Colors.white,
                    bufferedBarColor: Colors.grey,
                    baseBarColor: Colors.grey,
                    thumbColor: Colors.white,
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
      ),
    );
  }
}
