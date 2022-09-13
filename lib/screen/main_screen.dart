import 'package:computer_store/Notifiers/api_services.dart';
import 'package:computer_store/screen/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String routeName = "main_screen";
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF242424),
      appBar: AppBar(
          backgroundColor: const Color(0XFF242424),
          elevation: 0,
          actions: [
            Center(
              child: Text(
                "Laptops gaming".toUpperCase(),
                style: TextStyle(
                  fontFamily: "Teko",
                  fontSize: 48.sp,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () async {
                await Provider.of<ApiServices>(context, listen: false)
                    .signOut();
                Navigator.pushReplacementNamed(context, FirstScreen.routeName);
              },
            ),
            SizedBox(
              width: 2.w,
            ),
          ]),
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Container(
              width: 70.w,
              height: 50.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0XFF323232)),
              child: Center(
                child: Column(children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Image.asset('assets/images/Asus_ROG.png'),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "Asus ROG Strix G513QE",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "Laptop",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 10.sp,
                      color: const Color(0XFF8A8A8A),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "\$1,599.00",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 14.sp,
                      color: const Color(0XFFDA00FE),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add_circle,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        "Añadir al carrito",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
