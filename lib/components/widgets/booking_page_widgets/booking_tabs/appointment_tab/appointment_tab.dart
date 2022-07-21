import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_tabs/appointment_tab/appointment_calender.dart';
import 'package:regal_system_portfolio/constants/constants.dart';

class AppointmentTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding),
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovery Call',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: kDefaultPadding,),
              Text(
                '15 minutes',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding, kDefaultPadding * 8, kDefaultPadding * 4),
              child: AppointmentCalender(),
            )
        ),
      ],
    );
  }
}
