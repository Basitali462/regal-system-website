import 'package:flutter/material.dart';

class BookingText extends StatelessWidget {
  final String text;
  final TextStyle style;
  BookingText(this.text, this.style);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
