import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  final String label; // Tiêu đề của trường
  final String hintText; // Gợi ý cho ô nhập liệu

  CustomPasswordField({
    required this.label,
    required this.hintText,
  });

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _obscureText = true; // Trạng thái ẩn/hiện mật khẩu

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label in đậm
        Text(
          widget.label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        SizedBox(height: height * 0.01), // Khoảng cách giữa label và TextField
        // TextField cho mật khẩu
        TextField(
          obscureText: _obscureText,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: widget.hintText, // Gợi ý
            filled: true,
            fillColor: Color(0xFFD9D9D9),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _obscureText =
                      !_obscureText; // Chuyển trạng thái ẩn/hiện mật khẩu
                });
              },
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
