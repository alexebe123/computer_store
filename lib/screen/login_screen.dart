import 'package:computer_store/Models/profile_model.dart';
import 'package:computer_store/Notifiers/api_services.dart';
import 'package:computer_store/Notifiers/login_state.dart';
import 'package:computer_store/screen/main_screen.dart';
import 'package:computer_store/screen/singup_screen.dart';
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
  String emailError = "";
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
                height: 6.h,
              ),
              GestureDetector(
                onTap: () async {
                  final res =
                      await Provider.of<ApiServices>(context, listen: false)
                          .logInWithEmailAndPassword(profileModel);
                  if (res.isNotEmpty) {
                    Navigator.pushReplacementNamed(
                        context, MainScreen.routeName);
                  }
                },
                child: Container(
                  width: 80.w,
                  height: 8.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0XFF222222)),
                  child: Center(
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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
                    "Don't have an account? ",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SingUpScreen.routeName);
                    },
                    child: Text(
                      "sign up",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold,
                          color:const Color(0XFFD87234)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      height: 50,
                      thickness: 3,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Sign In with",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  const Expanded(
                    child: Divider(
                      height: 50,
                      thickness: 3,
                      indent: 10,
                      endIndent: 0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              InkWell(
                  onTap: () async {
                    final res =
                        await Provider.of<LoginState>(context, listen: false)
                            .load();
                    if (res != null) {
                      Navigator.of(context)
                          .pushReplacementNamed(MainScreen.routeName);
                    }
                  },
                  child: Image.asset('assets/images/google.png')),
            ]),
          ),
        ),
      ),
    );
  }
}
