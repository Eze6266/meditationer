// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meditation_app/Screens/OnboardingScreen.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import 'LoginScreen.dart';

class SignUpScree extends StatefulWidget {
  const SignUpScree({super.key});

  @override
  State<SignUpScree> createState() => _SignUpScreeState();
}

class _SignUpScreeState extends State<SignUpScree> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: GestureDetector(
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
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 25, left: 20 * size.width / 100),
                    child: Image(
                      image: AssetImage('assets/greenflower.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Lag Din Konto',
                style: TextStyle(
                  color: Color(0xff3f414e),
                  fontWeight: FontWeight.w400,
                  fontSize: 28,
                  fontFamily: 'HelveticaNeue',
                ),
              ),
              SizedBox(height: 30),
              SignInWithFacebookButton(
                size: size,
                imgUrl: 'assets/fb.png',
                text: 'FORTSETT MED FACEBOOK',
                coloring: Color(0xff15433b),
                borderColor: Colors.transparent,
                textColor: Colors.white,
              ),
              SizedBox(height: 20),
              SignInWithFacebookButton(
                size: size,
                imgUrl: 'assets/google.png',
                text: 'FORTSETT MED GOOGLE',
                coloring: Colors.white,
                borderColor: Colors.grey,
                textColor: Colors.black,
              ),
              SizedBox(height: 30),
              Text(
                'ELLER LOGG INN MED E-MAIL',
                style: TextStyle(
                  color: Color(0xffa1a4b2),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'HelveticaNeue',
                ),
              ),
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
                          'password',
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
                        suffixIcon: Image(
                          image: AssetImage('assets/brow.png'),
                        ),
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
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Jeg har lest',
                          style: TextStyle(
                            color: Color(0xffa1a4b2),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'HelveticaNeue',
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Personvernerklæring',
                          style: TextStyle(
                            color: Color(0xff7583ca),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'HelveticaNeue',
                          ),
                        ),
                      ],
                    ),
                    Checkbox(
                        value: isChecked,
                        onChanged: (newValue) {
                          setState(() {
                            isChecked = newValue!;
                          });
                        }),
                  ],
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OnBoardingScreen()));
                },
                child: Container(
                  height: 53,
                  width: 78 * size.width / 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38),
                    color: Color(0xff15433b),
                  ),
                  child: Center(
                    child: Text(
                      'KOMI GANG',
                      style: TextStyle(
                        color: Color(0xfff6f1fb),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'HelveticaNeue',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
