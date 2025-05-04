import 'package:flutter/material.dart';
import '../common/custom_button.dart';
import '../common/custom_input_field.dart';
import '../common/custom_password.dart';
import '../common/custom_title_widget.dart';
import '../root/home_page.dart';

class InformationScreen extends StatefulWidget {
  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
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
              title: 'Information',
              description: 'Enter your personal information',
            ),
            SizedBox(height: height * 0.02),
            CustomInputField(
              label: 'Name',
              hintText: 'Enter your name',
            ),

            SizedBox(height: height * 0.02),

            CustomInputField(
              label: 'Language',
              hintText: 'Enter your language',
            ),

            SizedBox(height: height * 0.02),

            CustomInputField(
              label: 'Age',
              hintText: 'Enter your age',
            ),

            SizedBox(height: height * 0.02),

            CustomInputField(
              label: 'Gender',
              hintText: 'Enter your gender',
            ),

            SizedBox(height: height * 0.06),

            // Register button
            CustomButton(
              buttonText: 'Register',
              routeName: '/complete',
            ),
          ],
        ),
      ),
    );
  }
}
