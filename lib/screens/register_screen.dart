import 'package:flutter/material.dart';
import '../common/custom_button.dart';
import '../common/custom_input_field.dart';
import '../common/custom_password.dart';
import '../common/custom_title_widget.dart';
import '../root/home_page.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/icons/back_button.png',
              width: 46, height: 46),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: width * 0.05,
          right: width * 0.05,
          bottom: width * 0.05,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 133, width: 133),
            SizedBox(height: height * 0.01),
            CustomTitleWidget(
              title: 'Register',
              description: 'Register to continue using the app',
            ),
            SizedBox(height: height * 0.02),
            CustomInputField(
              label: 'Phone number',
              hintText: 'Enter your number',
              keyboardType: TextInputType.phone,
            ),

            SizedBox(height: height * 0.02),
            // Password
            CustomPasswordField(
              label: 'Password',
              hintText: 'Enter your password',
            ),

            // Confirm password
            CustomPasswordField(
              label: 'Confirm password',
              hintText: 'Enter your confirm password',
            ),

            SizedBox(height: height * 0.04),

            // Next button
            CustomButton(
              buttonText: 'Next',
              routeName: '/otp',
            ),

            SizedBox(height: height * 0.04),
          ],
        ),
      ),
    );
  }
}
