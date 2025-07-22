import 'package:flutter/material.dart';

class TextfieldHeading extends StatelessWidget {
  final String textFieldHeading;
  const TextfieldHeading({super.key, required this.textFieldHeading});

  @override
  Widget build(BuildContext context) {
    return Text(
      textFieldHeading,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}
