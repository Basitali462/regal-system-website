import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_tabs/client_info/client_info_comp/info_form_comp/client_email_field.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_tabs/client_info/client_info_comp/info_form_comp/client_msg_field.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_tabs/client_info/client_info_comp/info_form_comp/client_name_field.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_tabs/client_info/client_info_comp/info_form_comp/client_phone_field.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_tabs/client_info/client_info_comp/info_form_comp/conform_button.dart';
import 'package:regal_system_portfolio/constants/constants.dart';

class ClientInfoForm extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClientNameFields(),
          SizedBox(height: kDefaultPadding * 2,),
          ClientPhoneField(),
          SizedBox(height: kDefaultPadding * 2,),
          ClientEmailField(),
          SizedBox(height: kDefaultPadding * 2,),
          ClientMessageField(),
          SizedBox(height: kDefaultPadding,),
          ConformationButton(formKey),
        ],
      ),
    );
  }
}
