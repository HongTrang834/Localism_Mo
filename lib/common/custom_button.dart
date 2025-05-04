import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText; // Text hiển thị trên nút
  final String routeName; // Tên route để điều hướng

  // Constructor để nhận vào giá trị buttonText và routeName
  CustomButton({
    required this.buttonText,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF1F84C6),
          minimumSize: Size(double.infinity, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Text(
          buttonText, // Văn bản hiển thị trên nút
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
