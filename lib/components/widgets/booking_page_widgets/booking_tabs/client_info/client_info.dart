import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_tabs/client_info/client_info_comp/call_time.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_tabs/client_info/client_info_comp/info_form.dart';
import 'package:regal_system_portfolio/constants/constants.dart';
import 'package:regal_system_portfolio/constants/variables.dart';

class ClientInfo extends StatelessWidget {
  //String date;
  @override
  Widget build(BuildContext context) {
    //date = DateFormat('MM dd, yyyy').format(selectedDate);
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CallTime(),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          ClientInfoForm(),
        ],
      ),
    );
  }
}
