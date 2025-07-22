import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcons extends StatelessWidget {
  const SvgIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.grey.shade200,
          child: CircleAvatar(
            radius: 26,
            backgroundColor: Colors.white,
            child: SvgPicture.asset('assets/svg/google.svg'),
          ),
        ),
        SizedBox(width: 20),
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.grey.shade200,
          child: CircleAvatar(
            radius: 26,
            backgroundColor: Colors.white,
            child: SvgPicture.asset('assets/svg/facebook.svg'),
          ),
        ),
        SizedBox(width: 20),
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.grey.shade200,
          child: CircleAvatar(
            radius: 26,
            backgroundColor: Colors.white,
            child: SvgPicture.asset('assets/svg/apple.svg'),
          ),
        ),
      ],
    );
  }
}
