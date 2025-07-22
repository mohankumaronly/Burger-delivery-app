import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/auth_screen/login_screen.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/My_textfield.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/auth_heading.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/auth_subheading.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/my_button.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/my_divider.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/password_textfield.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/svg_icons.dart';
import 'package:food_delivery_app/screens/auth_screen/widgets/textfield_heading.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isChecked = false;



  void onPressed(){
    print('Register');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthHeadings(headlineText: 'Create your new \naccount'),
                AuthSubheading(
                  subHeadingText:
                      'Create an account to start looking for the food \nyou like',
                ),
                SizedBox(height: 20),
                TextfieldHeading(textFieldHeading: 'Email Address'),
                SizedBox(height: 15),
                MyTextfield(hintText: 'Enter Email'),
                SizedBox(height: 15),
                TextfieldHeading(textFieldHeading: 'User Name'),
                SizedBox(height: 15),
                MyTextfield(hintText: 'Enter User Name'),
                SizedBox(height: 15),
                TextfieldHeading(textFieldHeading: 'Password'),
                SizedBox(height: 15),
                PasswordTextfield(hintText: 'Enter Password'),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.45,
                      child: Checkbox(
                        activeColor: Colors.orange,
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'I Agree with Terms of Service and Privacy \nPolicy',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                MyButton(buttonText: 'Register', onPressed: onPressed),
                SizedBox(height: 20,),
                MyDivider(),
                SizedBox(height: 20),
                SvgIcons(),
                SizedBox(height: 20),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        " Sign in",
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
