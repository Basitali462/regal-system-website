import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:regal_system_portfolio/constants/variables.dart';

class CallingMethods{
  Future sendEmail({
    @required String name,
    @required String email,
    @required String timeSlot,
    @required String msg,
  }) async{
    final serviceId = 'service_94palos';
    final templateId = 'template_hXpHPXE2';
    final userId = 'user_4J88toEk9QlbxOH6NpCSl';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final resp = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': name,
          'user_email': email,
          'time_slot': timeSlot,
          'message': msg
        }
      })
    );

    print(resp.body);
  }

  defaultSetting(){
    curSelectedTime = null;
    curSelectedDate = null;

    clientFirstName = '';
    clientLastName = '';
    clientEmail = '';
    clientMsg = '';
  }
}