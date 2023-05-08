// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/Auth/firebase_auth_services.dart';
import 'package:meditation_app/Screens/SignUp.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsureText = true;
  final _loginKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Form(
              key: _loginKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/greenflower.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    'Velkommen Tilbake!',
                    style: TextStyle(
                      color: Color(0xff3f414e),
                      fontWeight: FontWeight.w400,
                      fontSize: 28.sp,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                  SizedBox(height: 30.h),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 80 * size.width / 100,
                      height: 70.h,
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
                        
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xfff2f3f7),
                          label: Text(
                            'E-postadresse',
                            style: TextStyle(
                              color: Color(0xffa1a4b2),
                              fontSize: 16.sp,
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
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 80 * size.width / 100,
                      height: 70.h,
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
                              fontSize: 16.sp,
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
                            borderRadius: BorderRadius.circular(5.r),
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
                  SizedBox(height: 30.h),
                  GestureDetector(
                    onTap: () {
                      if (_loginKey.currentState!.validate()) {
                        Auth().signInUser(emailController.text, passwordController.text, context);
                      }
                    },
                    child: Container(
                      height: 53.h,
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
                            fontSize: 12.sp,
                            fontFamily: 'HelveticaNeue',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HAR IKKE EN KONTO?',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'HelveticaNeue',
                          fontWeight: FontWeight.w400,
                          color: Color(0xffa1a4b2),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).popAndPushNamed("/signup");
                        },
                        child: Text(
                          'MELDE DEG PÅ',
                          style: TextStyle(
                            fontSize: 14.sp,
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
        ),
      ),
    );
  }
}
