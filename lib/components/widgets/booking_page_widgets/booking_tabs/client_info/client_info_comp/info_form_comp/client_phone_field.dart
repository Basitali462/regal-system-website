import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/constants/constants.dart';

class ClientPhoneField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phone',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: kDefaultPadding / 2,),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            hintText: 'Phone Number',
          ),
        ),
        SizedBox(height: kDefaultPadding / 3,),
        Text(
          'You\'ll receive a text message reminder before your appointment.',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
