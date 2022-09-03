import 'dart:developer';

import 'package:computer_store/Notifiers/login_state.dart';
import 'package:computer_store/screen/add_account_screen.dart';
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
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            child: Image.asset(
              'assets/images/rafiki.png',
              width: 90.w,
              height: 75.h,
            ),
          ),
          InkWell(
            onTap: () async {
              final res = await Provider.of<LoginState>(context, listen: false)
                  .lode();
              if (res != null) {
                Navigator.of(context)
                    .pushReplacementNamed(AddAccount.routeName);
              }
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 10.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset('assets/images/google.png'),
                ),
                SizedBox(
                  child: Text(
                    'SingIn With Google',
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
