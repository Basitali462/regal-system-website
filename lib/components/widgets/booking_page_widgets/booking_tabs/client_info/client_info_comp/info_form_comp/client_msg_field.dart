import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/constants/constants.dart';
import 'package:regal_system_portfolio/constants/variables.dart';

class ClientMessageField extends StatefulWidget {
  @override
  _ClientMessageFieldState createState() => _ClientMessageFieldState();
}

class _ClientMessageFieldState extends State<ClientMessageField> {

  TextEditingController msgText = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Message *',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: kDefaultPadding / 2,),
        TextFormField(
          maxLines: 5,
          controller: msgText,
          onChanged: (val){
            setState(() {
              clientMsg = val;
            });
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            hintText: 'Briefly describe your idea...!!!',
          ),
          validator: (value){
            if(value == null || value.isEmpty){
              return 'Your message will be helpful for us';
            }else{
              return null;
            }
          },
        ),
      ],
    );
  }
}
