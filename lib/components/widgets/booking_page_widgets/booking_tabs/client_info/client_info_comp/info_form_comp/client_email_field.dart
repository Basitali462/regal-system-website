import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/constants/constants.dart';
import 'package:regal_system_portfolio/constants/variables.dart';

class ClientEmailField extends StatefulWidget {
  @override
  _ClientEmailFieldState createState() => _ClientEmailFieldState();
}

class _ClientEmailFieldState extends State<ClientEmailField> {

  TextEditingController emailText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email *',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: kDefaultPadding / 2,),
        TextFormField(
          controller: emailText,
          onChanged: (val){
            setState(() {
              clientEmail = val;
            });
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            hintText: 'Email',
          ),
          validator: (value){
            if(value == null || value.isEmpty){
              return 'Please Enter Your Email';
            }else{
              return null;
            }
          },
        ),
      ],
    );
  }
}
