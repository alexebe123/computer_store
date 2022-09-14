import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
