import 'package:flutter/material.dart';

import '../common/custom_button.dart';

class OtpVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // OTP Verification illustration
          Image.asset(
            'assets/images/otp.png',
            height: 300,
            width: 300,
          ),
          SizedBox(height: height * 0.02),
          // OTP Title and Description
          Text(
            'OTP Verification',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: height * 0.01),
          Text(
            'Enter your verification code we just sent on your email address.',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: height * 0.05),
          // OTP input fields
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                width: width * 0.12,
                height: height * 0.08,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  // maxLength: 1,
                  keyboardType: TextInputType.number,
                ),
              );
            }),
          ),
          SizedBox(height: height * 0.02),
          // Countdown Timer (just text for now)
          Text(
            '00:40',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: height * 0.02),
          // Resend OTP Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Didn’t received code?",
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text('Resend',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1F84C6))),
              ),
            ],
          ),
          SizedBox(height: height * 0.04),

          // Next button

          CustomButton(
            buttonText: 'Next',
            routeName: '/info',
          ),
        ]),
      ),
    );
  }
}
