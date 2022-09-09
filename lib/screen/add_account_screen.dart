import 'dart:developer';
import 'dart:io';

import 'package:computer_store/Models/profile_model.dart';
import 'package:computer_store/Notifiers/login_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';

class AddAccount extends StatefulWidget {
  const AddAccount({Key? key}) : super(key: key);
  static const routeName = "add_account";
  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  String nameError = "";
  String emailError = "";
  String ageError = "";
  String genderError = "";
  String phoneError = "";
  ProfileModel profileModel = ProfileModel.empty();
  ImagePicker picker = ImagePicker();

  String _getPathImage(String gender) {
    switch (gender) {
      case "man":
        return "assets/images/man.png";
      case "woman":
        return "assets/images/woman.png";
      default:
        return "assets/images/anonymous-icon.jpg";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[20],
      body: SafeArea(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                'أدخل معلومات الشخصية',
                style: TextStyle(fontSize: 13.sp),
              ),
              // fild for name
              Center(
                child: SizedBox(
                  width: 65.w,
                  child: TextField(
                      maxLength: 30,
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
                        hintText: "الاسم الكامل",
                        errorText: (nameError == "") ? null : nameError,
                        errorStyle: TextStyle(
                            fontFamily: "IBM Plex Sans Arabic",
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
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue.shade800, width: 2.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      )),
                ),
              ),
              // fild for phone
              Center(
                child: SizedBox(
                  width: 65.w,
                  child: TextField(
                      maxLength: 30,
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
                        hintText: "رقم الهاتف",
                        errorText: (phoneError == "") ? null : phoneError,
                        errorStyle: TextStyle(
                            fontFamily: "IBM Plex Sans Arabic",
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
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue.shade800, width: 2.5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      )),
                ),
              ),
              // fild for age
              InkWell(
                onTap: () {
                //  _selectDate(context);
                },
                child: Container(
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[600],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(11),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "تحديد تاريخ الميلاد",
                      style: TextStyle(
                        fontFamily: "IBM Plex Sans Arabic",
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              // fild for gender
           
              GestureDetector(
                onTap: () {
                  Provider.of<LoginState>(context, listen: false)
                      .addProfile(profileModel);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: Colors.amber[200],
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Text(
                    "إضافة",
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

}
