import 'package:flutter/material.dart';

// this custom use for a BoldText and a TextField with hintText

class CustomInputField extends StatelessWidget {
  final String label; // Nhãn của trường nhập liệu (label)
  final String hintText; // Text gợi ý khi người dùng chưa nhập
  final bool obscureText; // Để ẩn hoặc hiện mật khẩu, mặc định là false
  final TextInputType keyboardType; // Kiểu bàn phím, ví dụ như number hoặc text

  CustomInputField({
    required this.label,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text, // Mặc định là bàn phím chữ
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label in đậm
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        SizedBox(height: height * 0.01),
        // TextField
        TextField(
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText, // Gợi ý
            filled: true,
            fillColor: Color(0xFFD9D9D9),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            hintStyle: TextStyle(
              color: Colors.grey.withOpacity(0.95),
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
