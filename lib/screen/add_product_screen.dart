import 'package:computer_store/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);
  static const String routeName = "add_product_screen";
  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  String nameError = "";
  ProductModel productModel = ProductModel.empty();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: const Color(0XFFF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0XFF242424),
        elevation: 0,
        title: Center(
          child: Text(
            "Add Product",
            style: TextStyle(
              fontFamily: "Teko",
              fontSize: 30.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(children: [
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
                    productModel.name = value;
                  }
                },
                decoration: InputDecoration(
                  hintText: "الاسم",
                  fillColor: Colors.white,
                  errorText: (nameError == "") ? null : nameError,
                  errorStyle: TextStyle(
                      fontFamily: "IBM Plex Sans Arabic",
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
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
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.5),
                  ),
                )),
          ),
        ),
      ]),
    );
  }
}
