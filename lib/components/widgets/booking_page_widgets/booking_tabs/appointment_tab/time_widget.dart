import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/models/time.dart';

class MeetingTime extends StatelessWidget {
  final String selectedTime;
  MeetingTime(this.selectedTime);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: Text(
        selectedTime,
      ),
    );
  }
}
