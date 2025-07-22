import 'package:flutter/material.dart';

class AuthSubheading extends StatelessWidget {
  final String subHeadingText;
  const AuthSubheading({super.key, required this.subHeadingText});

  @override
  Widget build(BuildContext context) {
    return Text(
      subHeadingText,
      style: TextStyle(fontSize: 15, color: Colors.grey),
    );
  }
}
