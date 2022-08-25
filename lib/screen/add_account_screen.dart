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
  String emailError = "";
  String ageError = "";
  String genderError = "";
  String phoneError = "";
  String phone = "";
  String gender = "";
  String email = "";
  String name = "";
  DateTime age = DateTime.fromMillisecondsSinceEpoch(0);

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
                          name = value;
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
              // fild for email
              Center(
                child: SizedBox(
                  width: 65.w,
                  child: TextField(
                      maxLength: 30,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        if (emailError != "") {
                          setState(() {
                            emailError = "";
                          });
                        } else {
                          email = value;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "الاميل",
                        errorText: (emailError == "") ? null : emailError,
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
                          phone = value;
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
                  _selectDate(context);
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      _getPathImage(gender),
                      height: 20.h,
                      width: 20.w,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 2.w),
                          child: Row(children: [
                            // radio box
                            InkWell(
                              onTap: () {
                                setState(() {
                                  gender = "woman";
                                });
                              },
                              child: Container(
                                height: 3.w,
                                width: 3.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (gender == "woman")
                                      ? Colors.black
                                      : Colors.white,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                              ),
                            ),
                            Text(
                              "أمراة",
                              style: TextStyle(fontSize: 13.sp),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  gender = "man";
                                });
                              },
                              child: Container(
                                height: 3.w,
                                width: 3.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (gender == "man")
                                      ? Colors.black
                                      : Colors.white,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                              ),
                            ),
                            Text(
                              "رجل",
                              style: TextStyle(fontSize: 13.sp),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              )
              // fild for image
              ,
              Container(
                decoration: BoxDecoration(
                  color: Colors.amber[200],
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Text(
                  'حدد صورتك الشخصية',
                  style: TextStyle(fontSize: 15.sp),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  Future<DateTime> _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1970),
      lastDate: DateTime(2022),
    );
    if (selected != null && selected != age) {
      setState(() {
        age = selected;
      });
    }

    return age;
  }
}
