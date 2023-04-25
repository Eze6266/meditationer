// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meditation_app/Auth/firebase_auth_services.dart';
import 'package:meditation_app/Screens/Home/Home.dart';
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
  bool obsureText = true;
  bool isChecked = false;
  final _signUpKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Form(
              key: _signUpKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // GestureDetector(
                        //   onTap: () {
                        //     Navigator.pop(context);
                        //   },
                        //   child: Material(
                        //     borderRadius: BorderRadius.circular(100),
                        //     elevation: 4,
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Icon(
                        //         Icons.arrow_back,
                        //         color: Colors.black,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                       
                        Image(
                          image: AssetImage('assets/greenflower.png'),
                        ),
                      ],
                    ),
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
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 80 * size.width / 100,
                    height: 70,
                    child: TextFormField(
                      controller: usernameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter username';
                        }
                        return null;
                      },

                      cursorColor: Colors.black,
                      // maxLines: null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f3f7),
                        label: Text(
                          'Brukernavn',
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
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 80 * size.width / 100,
                    height: 70,
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        final RegExp emailRegex =
                            RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                        if (!emailRegex.hasMatch(value!)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },

                      cursorColor: Colors.black,
                      // maxLines: null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f3f7),
                        label: Text(
                          'E - postadresse',
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
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 80 * size.width / 100,
                    height: 70,
                    child: TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                      obscureText: obsureText,
                      cursorColor: Colors.black,
                      // maxLines: null,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obsureText = !obsureText;
                            });
                          },
                          child: Image(
                            image: AssetImage('assets/brow.png'),
                          ),
                        ),
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
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                            activeColor: Color(0xff15433b),
                            value: isChecked,
                            onChanged: (newValue) {
                              setState(() {
                                isChecked = newValue!;
                              });
                            }),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      if (_signUpKey.currentState!.validate() &&
                          isChecked == true) {
                        Auth().createNewUser(emailController.text, passwordController.text, context);
                      }
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
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Har du allerede en konto?',
                          style: TextStyle(
                            color: Color(0xffa1a4b2),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'HelveticaNeue',
                          ),
                        ),
                        TextButton(onPressed: (){
                          Navigator.of(context).popAndPushNamed("/login");
                        }, child: Text('Logg Inn', style: TextStyle(color: Color(0xff15433b),),))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
