// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
          child: Column(
            children: [
              Row(
                children: [
                  Material(
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
                  Image(
                    height: 50,
                    width: 50,
                    image: AssetImage('assets/girlie.png'),
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
