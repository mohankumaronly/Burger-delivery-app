import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/auth_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery application Learning',
      home: LoginScreen(),
    );
  }
}
