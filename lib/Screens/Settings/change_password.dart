import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/Auth/firebase_auth_services.dart';


class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  String _newPassword = '';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff236559),
          title: Text('Change Password'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 40.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Enter your new password:',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'New password',
                ),
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    _newPassword = value;
                  });
                },
              ),
              SizedBox(height: 30.h),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff236559))),
                  child: Text('Save'),
                  onPressed: () {
                    //TODO: Save the new username to the database or API
                    if (_newPassword.isNotEmpty) {
                      Auth().changePassword(_newPassword, context);
                      // changePassword(_newPassword, context);
              
                      
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Enter new password",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff236559),
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Color(0xFFD4E4F4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Color(0xff236559))),
                          margin: EdgeInsets.fromLTRB(20.w, 80.h, 20.w, 760.h),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      );
  }
}