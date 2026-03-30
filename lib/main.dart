import 'package:flutter/material.dart';
import 'package:lab3/screens/cart_screen.dart';
import 'package:lab3/screens/checkout_screen.dart';
import 'package:lab3/screens/delivery_screen.dart';
import 'package:lab3/screens/details_screen.dart';
import 'package:lab3/screens/loading_screen.dart';
import 'package:lab3/screens/profile_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoadingScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomeScreen(),
        '/details': (context) => const DetailsScreen(),
        '/cart': (context) => const CartScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/delivery': (context) => const DeliveryScreen(),
        '/checkout': (context) => const CheckoutScreen(),
      },
    );
  }
}