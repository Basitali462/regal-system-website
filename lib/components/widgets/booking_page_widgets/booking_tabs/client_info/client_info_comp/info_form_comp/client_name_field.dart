import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/constants/constants.dart';
import 'package:regal_system_portfolio/constants/variables.dart';

class ClientNameFields extends StatefulWidget {
  @override
  _ClientNameFieldsState createState() => _ClientNameFieldsState();
}

class _ClientNameFieldsState extends State<ClientNameFields> {

  TextEditingController fNameText = TextEditingController();
  TextEditingController lastNameText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name *',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: kDefaultPadding / 2,),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: TextFormField(
                controller: fNameText,
                onChanged: (val){
                  setState(() {
                    clientFirstName = val;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  hintText: 'First Name',
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Please Enter Your First Name';
                  }else{
                    return null;
                  }
                },
              ),
            ),
            SizedBox(width: kDefaultPadding,),
            Expanded(
              flex: 3,
              child: TextFormField(
                controller: lastNameText,
                onChanged: (val){
                  setState(() {
                    clientLastName = val;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  hintText: 'Last Name',
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Please Enter Your Last Name';
                  }else{
                    return null;
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
