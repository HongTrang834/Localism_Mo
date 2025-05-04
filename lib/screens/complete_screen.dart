import 'package:flutter/material.dart';
import '../common/custom_button.dart';

class CompleteScreen extends StatefulWidget {
  @override
  State<CompleteScreen> createState() => _CompleteScreenState();
}

class _CompleteScreenState extends State<CompleteScreen> {
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
        padding: EdgeInsets.all(width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Biểu tượng dấu tick (thay Icon bằng Image.asset)
            Image.asset(
              'assets/images/tick.png',
              width: 66,
              height: 66,
            ),
            SizedBox(height: height * 0.03),
            // Text "Thank you"
            Text(
              'Thank you',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.01),
            // Mô tả thông báo
            Text(
              'Your account has been created',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: height * 0.2),

            // Nút "Let’s Start"
            CustomButton(
              buttonText: 'Let’s Start',
              routeName: '/homepage',
            ),
          ],
        ),
      ),
    );
  }
}
