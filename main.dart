import 'package:flutter/material.dart';
import 'package:new_shop/screens/cart_screen.dart';
import 'package:new_shop/screens/checkout_screen.dart';
import 'package:new_shop/screens/customer_home.dart';
import 'package:new_shop/screens/home_screen.dart';
import 'package:new_shop/screens/login_screens.dart';
import 'package:new_shop/screens/product_details.dart';
import 'package:new_shop/screens/order_progress.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: 'Nunito',
      ),
      home: LoginScreen(),
    );
  }
}
