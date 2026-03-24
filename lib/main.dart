import 'package:flutter/material.dart';
import 'package:lab3/screens/cart_screen.dart';
import 'package:lab3/screens/checkout_screen.dart';
import 'package:lab3/screens/delivery_screen.dart';
import 'package:lab3/screens/details_screen.dart';
import 'package:lab3/screens/home_screen.dart';
import 'package:lab3/screens/login_screen.dart';
import 'package:lab3/screens/profile_screen.dart';
import 'package:lab3/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login UI',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: DeliveryScreen(), 
    );
  }
}