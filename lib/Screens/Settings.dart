// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(100),
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
                        height: 50,
                        width: 50,
                        image: AssetImage('assets/girlie.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Innstillinger',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Color(0xff3f414e),
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Kontoinnstillinger',
                      style: TextStyle(
                        color: Color(0xff236559),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'HelveticaNeue',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18),
                SettingsListTile(
                  imgUrl: 'assets/user.png',
                  mainText: 'Profil Informasjon',
                  subText: 'Navn, Email, Sikkerhet',
                  color: Color(0xffa6d6ff),
                ),
                SizedBox(height: 20),
                SettingsListTile(
                  imgUrl: 'assets/shield.png',
                  mainText: 'Personvern ',
                  subText: 'Kontroller personvernet ditt',
                  color: Color(0xff9ba6fa),
                ),
                SizedBox(height: 20),
                SettingsListTile(
                  imgUrl: 'assets/lock.png',
                  mainText: 'Bytt Passord',
                  subText: 'Endre ditt nåværende passord',
                  color: Color(0xff00c48c),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Varslingsinnstillinger',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Color(0xff236559),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SettingsListTile(
                  imgUrl: 'assets/bell.png',
                  mainText: 'Push-varsler',
                  subText: 'Enbale Push-varsler',
                  color: Color(0xffff98a8),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Generell',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Color(0xff236559),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SettingsListTile(
                  imgUrl: 'assets/heart.png',
                  mainText: 'Vurder appen vår',
                  subText: 'Vurder og anmeld oss',
                  color: Color(0xfff6bb86),
                ),
                SizedBox(height: 20),
                SettingsListTile(
                  imgUrl: 'assets/envelope.png',
                  mainText: 'Send tilbakemelding',
                  subText: 'Del tankene dine',
                  color: Color(0xffffdf92),
                ),
                SizedBox(height: 20),
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: color,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('$imgUrl'),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$mainText',
                style: TextStyle(
                  color: Color(0xff3f414e),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'HelveticaNeue',
                ),
              ),
              SizedBox(height: 3),
              Text(
                '$subText',
                style: TextStyle(
                  color: Color(0xff3f414e),
                  fontSize: 13,
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
