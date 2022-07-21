import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:regal_system_portfolio/constants/variables.dart';

class CallTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Discovery Call ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: DateFormat.yMMMMd('en_US').format(curSelectedDate),
          ),
          TextSpan(
            text: ' at ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: curSelectedTime,
          ),
        ],
      ),
    );
  }
}
