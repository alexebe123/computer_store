import 'dart:developer';

import 'package:computer_store/Notifiers/api_services.dart';
import 'package:computer_store/screen/login_screen.dart';
import 'package:computer_store/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);
  static const String routeName = 'first_screen';
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () async {
      try {
        setState(() {
          isloading = true;
        });
      } catch (e) {}

      try {
        if (Provider.of<ApiServices>(context, listen: false).auth.currentUser !=
            null) {
          Navigator.pushReplacementNamed(context, MainScreen.routeName);
        } else {
          Navigator.pushReplacementNamed(context, LoginScreen.routeName);
        }
      } catch (e) {
        log(e.toString());
      }
      try {
        setState(() {
          isloading = false;
        });
      } catch (e) {}
    });

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 38, 6, 44),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
                child: Image.asset('assets/images/Logo.png'),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Bienvenido/a a",
                style: TextStyle(
                    fontFamily: "Teko",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0XFFFFFFFF)),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Tecnomega".toUpperCase(),
                style: TextStyle(
                    fontFamily: "Teko",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0XFFFFFFFF)),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 2.w),
                child: SizedBox(
                    height: 12.w,
                    width: 12.w,
                    child: const CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.black,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
