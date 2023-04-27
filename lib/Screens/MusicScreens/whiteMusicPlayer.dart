// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:audioplayers/audioplayers.dart';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WhiteMusicPlayer extends StatefulWidget {
  WhiteMusicPlayer(
      {super.key,
      required this.category,
      required this.title,
      required this.audioUrl});

  String category;
  String title;
  String audioUrl;

  @override
  State<WhiteMusicPlayer> createState() => _WhiteMusicPlayerState();
}

class _WhiteMusicPlayerState extends State<WhiteMusicPlayer>
    with SingleTickerProviderStateMixin {
  late AudioPlayer _audioPlayer;
  late AudioCache audioCache;
  // String? _audioUrl;

  bool _isMuted = false;
  bool _isRepeating = false;

  bool _isPlaying = false;
  int _audioDuration = 0;
  int _audioPosition = 0;

  late AnimationController _controller;

  int _monCount = 0;
  int _tueCount = 0;
  int _wedCount = 0;
  int _thuCount = 0;
  int _friCount = 0;
  int _satCount = 0;
  int _sunCount = 0;

  // void _incrementCount(int day) async {
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     switch (day) {
  //       case 1:
  //         _monCount++;
  //         _prefs.setInt('monCount', _monCount);
  //         break;
  //       case 2:
  //         _tueCount++;
  //         _prefs.setInt('tueCount', _tueCount);
  //         break;
  //       case 3:
  //         _wedCount++;
  //         _prefs.setInt('wedCount', _wedCount);
  //         break;
  //       case 4:
  //         _thuCount++;
  //         _prefs.setInt('thuCount', _thuCount);
  //         break;
  //       case 5:
  //         _friCount++;
  //         _prefs.setInt('friCount', _friCount);
  //         break;
  //       case 6:
  //         _satCount++;
  //         _prefs.setInt('satCount', _satCount);
  //         break;
  //       case 7:
  //         _sunCount++;
  //         _prefs.setInt('sunCount', _sunCount);
  //         break;
  //     }
  //   });
  // }

  @override
  void initState() {
    super.initState();
    // _incrementCount(DateTime.now().weekday);
    _audioPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: _audioPlayer);
    
    _audioPlayer.onDurationChanged.listen((duration) {
      setState(() {
        _audioDuration = duration.inMilliseconds;
      });
    });
    _audioPlayer.onAudioPositionChanged.listen((position) {
      setState(() {
        _audioPosition = position.inMilliseconds;
      });
    });

    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 10,
      ),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  void _playAudio() async {
    print(widget.audioUrl);
    int result = await _audioPlayer.play(widget.audioUrl);
    if (result == 1) {
      setState(() {
        _isPlaying = true;
      });
    }
  }

  void _pauseAudio() async {
    int result = await _audioPlayer.pause();
    if (result == 1) {
      setState(() {
        _isPlaying = false;
      });
    }
  }

  void _toggleMute() {
    setState(() {
      _isMuted = !_isMuted;
      _audioPlayer.setVolume(_isMuted ? 0 : 1);
    });
  }

  void _toggleRepeat() {
    setState(() {
      _isRepeating = !_isRepeating;
      _audioPlayer.setReleaseMode(
          _isRepeating ? ReleaseMode.LOOP : ReleaseMode.RELEASE);
    });
  }

  void _seekAudio(double value) {
    Duration duration = Duration(milliseconds: value.toInt());
    _audioPlayer.seek(duration);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Duration durationInMinutes = Duration(milliseconds: _audioDuration);
    DateTime durationDateTime = DateTime.fromMillisecondsSinceEpoch(0).add(durationInMinutes);
    String duration_mm_ss = DateFormat('mm:ss').format(durationDateTime);

    Duration positionInMinutes = Duration(milliseconds: _audioPosition);
    DateTime positionDateTime = DateTime.fromMillisecondsSinceEpoch(0).add(positionInMinutes);
    String position_mm_ss = DateFormat('mm:ss').format(positionDateTime);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 10, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                widget.title,
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'HelveticaNeue',
                  color: Color(0xff3f414e),
                ),
              ),
              SizedBox(height: 12),
              Text(
                widget.category,
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
                  IconButton(
                    onPressed: (){
                      setState(() {
                        _toggleMute();
                      });
                    },
                    icon: Icon(
                      _isMuted?Icons.volume_off_rounded:Icons.volume_up_rounded,
                      color: Colors.black,
                    ),
                    iconSize: 40,
                  ),
                   _isPlaying
                        ? IconButton(
                            onPressed: _isPlaying ? _pauseAudio : null,
                            icon: Icon(
                              Icons.pause,
                              color: Colors.black,
                            ),
                            iconSize: 64.0,
                          )
                        : IconButton(
                            onPressed: _isPlaying ? null : _playAudio,
                            icon: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                            ),
                            iconSize: 64.0,
                          ),
                  IconButton(
                    onPressed: (){
                      setState(() {
                        _toggleRepeat();
                      });
                    },
                    icon: Icon(
                      _isRepeating?Icons.repeat_one:Icons.repeat,
                      color: Colors.black,
                    ),
                    iconSize: 40,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10 * size.width / 100),
                child: ProgressBar(
                  progressBarColor: Colors.black,
                  // bufferedBarColor: Color.fromRGBO(0, 0, 0, 0.3),
                  baseBarColor: Color.fromRGBO(0, 0, 0, 0.3),
                  thumbColor: Colors.black,
                  thumbRadius: 8,
                  progress: positionInMinutes,
                  // buffered: Duration(milliseconds: 2000),
                  total: durationInMinutes,
                  onSeek: (duration) {
                    // print('User selected a new time: $duration');
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
