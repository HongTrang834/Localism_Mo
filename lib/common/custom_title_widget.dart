import 'package:flutter/material.dart';

class CustomTitleWidget extends StatelessWidget {
  final String title;
  final String description;

  CustomTitleWidget({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          description,
          style: TextStyle(
              fontSize: 15, color: Colors.grey, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
