import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);
  static const String routeName = 'first_screen';
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
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
            ],
          ),
        ),
      ),
    );
  }
}
