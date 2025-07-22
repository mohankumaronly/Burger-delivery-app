import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/My_textfield.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/auth_heading.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/auth_subheading.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/my_button.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/textfield_heading.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthHeadings(headlineText: 'Forgot password?'),
                AuthSubheading(subHeadingText: 'Enter your email address and we’ll send you \nconfirmation code to reset your password'),
                SizedBox(height: 30,),
                TextfieldHeading(textFieldHeading: 'Email Address'),
                 SizedBox(height: 30,),
                MyTextfield(hintText: 'Enter Valid Email'),
                 SizedBox(height: 40,),
                MyButton(buttonText: 'Continue', onPressed: (){
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}