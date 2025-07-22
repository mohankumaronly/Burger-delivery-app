import 'package:flutter/material.dart';

class AuthHeadings extends StatelessWidget {
  final String headlineText;
  const AuthHeadings({super.key, required this.headlineText});

  @override
  Widget build(BuildContext context) {
    return Text(
      headlineText,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
    );
  }
}
