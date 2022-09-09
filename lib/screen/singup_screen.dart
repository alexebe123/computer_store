import 'package:computer_store/Models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({Key? key}) : super(key: key);
  static const String routeName = "singup_screen";
  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  String phoneError = "";
  String emailError = "";
  String nameError = "";
  String passwordError = "";
  ProfileModel profileModel = ProfileModel.empty();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                "LogIn".toUpperCase(),
                style: TextStyle(
                  fontFamily: "Teko",
                  fontSize: 40.sp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Enter your email and password",
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 12.sp,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: SizedBox(
                  width: 80.w,
                  child: TextField(
                      keyboardType: TextInputType.name,
                      onChanged: (value) {
                        if (nameError != "") {
                          setState(() {
                            nameError = "";
                          });
                        } else {
                          profileModel.name = value;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Name",
                        errorText: (nameError == "") ? null : nameError,
                        errorStyle: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 5.w),
                        hintStyle: TextStyle(
                            fontFamily: "IBM Plex Sans Arabic",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                        floatingLabelStyle: TextStyle(
                            fontFamily: "IBM Plex Sans Arabic",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Center(
                child: SizedBox(
                  width: 80.w,
                  child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        if (emailError != "") {
                          setState(() {
                            emailError = "";
                          });
                        } else {
                          profileModel.email = value;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Email",
                        errorText: (emailError == "") ? null : emailError,
                        errorStyle: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 5.w),
                        hintStyle: TextStyle(
                            fontFamily: "IBM Plex Sans Arabic",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                        floatingLabelStyle: TextStyle(
                            fontFamily: "IBM Plex Sans Arabic",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Center(
                child: SizedBox(
                  width: 80.w,
                  child: TextField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        if (phoneError != "") {
                          setState(() {
                            phoneError = "";
                          });
                        } else {
                          profileModel.phone = value;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Phone",
                        errorText: (phoneError == "") ? null : phoneError,
                        errorStyle: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 5.w),
                        hintStyle: TextStyle(
                            fontFamily: "IBM Plex Sans Arabic",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                        floatingLabelStyle: TextStyle(
                            fontFamily: "IBM Plex Sans Arabic",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Center(
                child: SizedBox(
                  width: 80.w,
                  child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value) {
                        if (passwordError != "") {
                          setState(() {
                            passwordError = "";
                          });
                        } else {
                          profileModel.password = value;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "password",
                        errorText: (passwordError == "") ? null : passwordError,
                        errorStyle: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 5.w),
                        hintStyle: TextStyle(
                            fontFamily: "IBM Plex Sans Arabic",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                        floatingLabelStyle: TextStyle(
                            fontFamily: "IBM Plex Sans Arabic",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                width: 80.w,
                height: 8.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0XFF222222)),
                child: Center(
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 14.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 11.sp,
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 11.sp,
                        color: Color(0XFFD87234)),
                  ),
                ],
              ),

              /* SizedBox(
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
                  /*  Navigator.of(context)
                        .pushReplacementNamed(AddAccount.routeName);*/
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
              )*/
            ]),
          ),
        ),
      ),
    );
  }

}
