import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/Auth/firestore_services.dart';

class ChangeUsernameScreen extends StatefulWidget {
  @override
  _ChangeUsernameScreenState createState() => _ChangeUsernameScreenState();
}

class _ChangeUsernameScreenState extends State<ChangeUsernameScreen> {
  String _newUsername = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Username'),
        backgroundColor: Color(0xff236559),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Enter your new username:',
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 10.h),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'New username',
              ),
              onChanged: (value) {
                setState(() {
                  _newUsername = value;
                });
              },
            ),
            SizedBox(height: 30.h),
            Center(
              child: Hero(
                tag: "username",
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff236559))),
                  child: Text('Save'),
                  onPressed: () {
                    //TODO: Save the new username to the database or API
                    if (_newUsername.isNotEmpty) {
                      addUser(_newUsername);
                  
                      Navigator.pop(context);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Enter new username",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff236559),
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Color(0xff236559),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Color(0xFF53A3DA))),
                          margin: EdgeInsets.fromLTRB(20.w, 80.h, 20.w, 760.h),
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
