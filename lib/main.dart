import 'package:computer_store/Notifiers/providers.dart';
import 'package:computer_store/screen/add_account_screen.dart';
import 'package:computer_store/screen/add_product_screen.dart';
import 'package:computer_store/screen/first_screen.dart';
import 'package:computer_store/screen/login_screen.dart';
import 'package:computer_store/screen/main_screen.dart';
import 'package:computer_store/screen/singup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'Computer Store',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: FirstScreen.routeName,
            routes: {
              LoginScreen.routeName: (context) => const LoginScreen(),
              FirstScreen.routeName: (context) => const FirstScreen(),
              SingUpScreen.routeName: (context) => const SingUpScreen(),
              AddAccount.routeName: (context) => const AddAccount(),
              MainScreen.routeName: (context) => const MainScreen(),
              AddProductScreen.routeName: (context) => const AddProductScreen(),
            },
          );
        },
      ),
    );
  }
}
