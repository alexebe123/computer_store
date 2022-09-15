import 'package:computer_store/Notifiers/api_services.dart';
import 'package:computer_store/screen/first_screen.dart';
import 'package:computer_store/widget/main/section/product/product_item_widget.dart';
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
  int currentIndex = 1;
  final PageController _pageController = PageController();

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
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 1.h,
              ),
              const ProductItemWidget(),
              SizedBox(
                height: 30.h,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  children: const [
                    // main screen
                  ],
                ),
              ),
            ],
          ),
          Builder(builder: (context) {
            return Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                width: 100.w,
                height: 80,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(100.w, 80),
                    ),
                    SizedBox(
                      width: 100.w,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // home icon
                          IconButton(
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            splashColor: Colors.white,
                          ),
                          // orders icon
                          IconButton(
                              icon: const Icon(
                                Icons.account_box,
                                color: Colors.black,
                              ),
                              onPressed: () {}),
                          // list product icon
                          IconButton(
                            icon: const Icon(
                              Icons.card_travel_outlined,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            splashColor: Colors.white,
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.settings,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            splashColor: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
