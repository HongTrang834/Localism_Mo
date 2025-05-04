import 'package:flutter/material.dart';
import '../common/custom_button.dart';
import '../common/custom_input_field.dart';
import '../common/custom_password.dart';
import '../common/custom_title_widget.dart';
import '../root/home_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // Lấy kích thước màn hình
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
              title: 'Login',
              description: 'Login to continue using the app',
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

            // Forgot password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Forgot password logic here
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

            SizedBox(height: height * 0.04),

            //Login button
            CustomButton(
              buttonText: 'Login',
              routeName: '/homepage',
            ),

            SizedBox(height: height * 0.04),

            // "Or login with" line
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Text(
                  'Or login with',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.04),

            // Các nút Google và Facebook
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Nút Google
                Container(
                  width: 107,
                  height: 53,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: IconButton(
                    onPressed: () {
                      // Logic login with Google ở đây
                    },
                    icon: Image.asset(
                      'assets/icons/google.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
                SizedBox(width: 40),
                // Nút Facebook
                Container(
                  width: 107,
                  height: 53,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: IconButton(
                    onPressed: () {
                      // Logic login with Facebook ở đây
                    },
                    icon: Image.asset(
                      'assets/icons/facebook.png', // Cung cấp đường dẫn ảnh facebook.png
                      width: 35,
                      height: 35,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: height * 0.05),

            // Don't have an account? Register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ", style: TextStyle(fontSize: 15)),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text('Register',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1F84C6))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
