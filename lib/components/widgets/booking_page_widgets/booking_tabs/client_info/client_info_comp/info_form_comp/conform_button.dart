import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:regal_system_portfolio/constants/calling_method.dart';
import 'package:regal_system_portfolio/constants/constants.dart';
import 'package:regal_system_portfolio/constants/variables.dart';
import 'package:regal_system_portfolio/routes/route_names.dart';

class ConformationButton extends StatelessWidget {

  final GlobalKey<FormState> form;
  ConformationButton(this.form);

  void _openConformationDialog(BuildContext context) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          //String selectedDate = DateFormat('dd-MMM-yyyy').format(date);
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: CupertinoAlertDialog(
                /*shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0)),*/
                title: Text('You are on Right track'),
                content: Container(
                  child: Text(
                    'Thank you for choosing Us. Our team will get back to you shortly.',
                  ),
                ),
                actions: [
                  CupertinoDialogAction(
                    onPressed: (){
                      Navigator.of(context).pushNamed(homeRoute);
                    },
                    child: Text(
                      'Ok',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 200),
        barrierDismissible: false,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {
          return null;
        });
        /*.then((value) {
      Navigator.of(context).pushNamed(homeRoute);
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async{
        if(form.currentState.validate()){
          await CallingMethods().sendEmail(
            name: clientFirstName + clientLastName, 
            email: clientEmail,
            timeSlot: DateFormat.yMMMMd('en_US').format(curSelectedDate) + ' at ' + curSelectedTime,
            msg: clientMsg,
          );
          CallingMethods().defaultSetting();
          _openConformationDialog(context);
          /*ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Processing Data')),
          );*/
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        child: Text(
          'Conform Appointment >>',
          style: Theme.of(context).textTheme.bodyText2.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
