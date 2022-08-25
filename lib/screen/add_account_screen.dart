import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddAccount extends StatefulWidget {
  const AddAccount({Key? key}) : super(key: key);
  static const routeName = "add_account";
  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  String nameError = "";
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: SingleChildScrollView(
            child: Column(children: [
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
                          name = value;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "الاسم الكامل",
                        errorText:
                            (nameError == "") ? null : nameError,
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
            ]),
          ),
        ),
      ),
    );
  }
}
