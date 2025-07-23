import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/auth_screen/register_screen.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/My_textfield.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/auth_heading.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/auth_subheading.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/my_button.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/my_divider.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/password_textfield.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/svg_icons.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/textfield_heading.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void onPressed() {
    print('button is pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthHeadings(headlineText: "Login to your \naccount."),
                AuthSubheading(
                  subHeadingText: "Please sign in to your account",
                ),
                SizedBox(height: 30),
                TextfieldHeading(textFieldHeading: "Email Address"),
                SizedBox(height: 20),
                MyTextfield(hintText: 'Email'),
                SizedBox(height: 20),
                TextfieldHeading(textFieldHeading: "Password"),
                SizedBox(height: 20),
                PasswordTextfield(hintText: 'Password'),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                       showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        context: context, builder: (context){
                        return SizedBox(
                          height: 500,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(25),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // AuthHeadings(headlineText: 'Forgot password?'),
                                  // AuthSubheading(subHeadingText: 'Select which contact details should we use to \nreset your password'),
                                  Center(
                                    child: AuthHeadings(headlineText: 'Rock Ranger')),
                                 
                                ],
                              ),
                            ),
                          ),
                        );
                       });
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                MyButton(buttonText: 'Sign In', onPressed: onPressed),
                SizedBox(height: 25),
                MyDivider(),
                SizedBox(height: 35),
                SvgIcons(),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        " Register",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
