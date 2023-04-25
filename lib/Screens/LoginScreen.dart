// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meditation_app/Screens/SignUp.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
               Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Material(
                            borderRadius: BorderRadius.circular(100),
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Image(
                          image: AssetImage('assets/greenflower.png'),
                        ),
                      ],
                    ),
                  ),
              SizedBox(height: 30),
              Text(
                'Velkommen Tilbake!',
                style: TextStyle(
                  color: Color(0xff3f414e),
                  fontWeight: FontWeight.w400,
                  fontSize: 28,
                  fontFamily: 'HelveticaNeue',
                ),
              ),
              
              // SignInWithFacebookButton(
              //   size: size,
              //   imgUrl: 'assets/fb.png',
              //   text: 'FORTSETT MED FACEBOOK',
              //   coloring: Color(0xff15433b),
              //   borderColor: Colors.transparent,
              //   textColor: Colors.white,
              // ),
              // SizedBox(height: 20),
              // SignInWithFacebookButton(
              //   size: size,
              //   imgUrl: 'assets/google.png',
              //   text: 'FORTSETT MED GOOGLE',
              //   coloring: Colors.white,
              //   borderColor: Colors.grey,
              //   textColor: Colors.black,
              // ),
              SizedBox(height: 30),
              
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: 80 * size.width / 100,
                  height: 70,
                  child: Flexible(
                    child: TextField(
                      cursorColor: Colors.black,
                      maxLines: null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f3f7),
                        label: Text(
                          'E-postadresse',
                          style: TextStyle(
                            color: Color(0xffa1a4b2),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'HelveticaNeue',
                            letterSpacing: 0.4,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xfff2f3f7),
                            width: 2,
                          ),
                        ),
                        focusColor: Color.fromRGBO(25, 95, 167, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xfff2f3f7),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: 80 * size.width / 100,
                  height: 70,
                  child: Flexible(
                    child: TextField(
                      cursorColor: Colors.black,
                      maxLines: null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f3f7),
                        label: Text(
                          'Password',
                          style: TextStyle(
                            color: Color(0xffa1a4b2),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'HelveticaNeue',
                            letterSpacing: 0.4,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xfff2f3f7),
                            width: 2,
                          ),
                        ),
                        focusColor: Color.fromRGBO(25, 95, 167, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xfff2f3f7),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 53,
                width: 78 * size.width / 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  color: Color(0xff15433b),
                ),
                child: Center(
                  child: Text(
                    'LOGG INN',
                    style: TextStyle(
                      color: Color(0xfff6f1fb),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                ),
              ),
             
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HAR IKKE EN KONTO?',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w400,
                      color: Color(0xffa1a4b2),
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).popAndPushNamed("/signup");
                    },
                    child: Text(
                      'MELDE DEG PÅ',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInWithFacebookButton extends StatelessWidget {
  SignInWithFacebookButton({
    super.key,
    required this.size,
    required this.coloring,
    required this.imgUrl,
    required this.text,
    required this.borderColor,
    required this.textColor,
  });
  String text;
  String imgUrl;
  Color coloring;
  final Size size;
  Color borderColor;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 78 * size.width / 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        border: Border.all(color: borderColor),
        color: coloring,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 20),
          Image(
            image: AssetImage('$imgUrl'),
          ),
          SizedBox(width: 20),
          Text(
            '$text',
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: 'HelveticaNeue',
            ),
          ),
        ],
      ),
    );
  }
}
