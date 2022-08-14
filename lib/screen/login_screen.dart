import 'dart:developer';

import 'package:computer_store/Notifiers/firebase_serves.dart';
import 'package:computer_store/screen/welcom_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/login';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                final res =
                    await Provider.of<FirebaseService>(context, listen: false)
                        .signInwithGoogle();
                if (res != null) {
                  Navigator.of(context)
                      .pushReplacementNamed(WelcomScreen.routeName);
                } else {
                  log('error');
                }
              },
              child: Container(
                height: 10.h,
                width: 30.w,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(Icons.login, color: Colors.white, size: 50),
              ),
            )
          ]),
    );
  }
}
