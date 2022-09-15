import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0XFF242424),
          elevation: 0,
          actions: [
            Center(
              child: Text(
                "Add Product",
                style: TextStyle(
                  fontFamily: "Teko",
                  fontSize: 48.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
          body: Column(children: [
            
          ]),
    );
  }
}
