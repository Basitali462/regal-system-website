import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_tabs/appointment_tab/time_drop_down/select_drop_list.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_tabs/appointment_tab/time_widget.dart';
import 'package:regal_system_portfolio/constants/constants.dart';
import 'package:regal_system_portfolio/constants/variables.dart';
import 'package:regal_system_portfolio/models/drop_list_model.dart';
import 'package:regal_system_portfolio/models/time.dart';
import 'package:regal_system_portfolio/pages/booking_page/booking_page.dart';
import 'package:table_calendar/table_calendar.dart';

class AppointmentCalender extends StatefulWidget {
  @override
  _AppointmentCalenderState createState() => _AppointmentCalenderState();
}

class _AppointmentCalenderState extends State<AppointmentCalender> {

  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDate = DateTime.now();
  DateTime focusedDate = DateTime.now();

  //DropListModel dropListModel = DropListModel([OptionItem(id: "1", title: "05 : 00 PM"), OptionItem(id: "2", title: "05 : 30 PM")]);

  void _openCustomDialog(DateTime date) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          String selectedDate = DateFormat('dd-MMM-yyyy').format(date);
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: CupertinoAlertDialog(
                /*shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0)),*/
                title: Text('Select time for\n $selectedDate'),
                content: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 100,
                  margin: EdgeInsets.only(top: kDefaultPadding),
                  child: GridView.count(
                    //shrinkWrap: true,
                    //physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 5,
                    crossAxisSpacing: kDefaultPadding / 2,
                    mainAxisSpacing: kDefaultPadding / 2,
                    children: demo_time.map((e) {
                      return Material(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pop(e.time);
                          },
                          child: MeetingTime(e.time),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                actions: [
                  CupertinoDialogAction(
                    onPressed: (){
                      Navigator.of(context).pop();
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
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {
          return null;
        }).then((value) {
          if(value != null){
            curSelectedDate = date;
            curSelectedTime = value;
            if(tabController != null){
              tabController.animateTo((tabController.index + 1));
            }
          }
          //BookingPage.myTabPageKey.currentState.t
          print('dailog value $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      //height: size.width * 0.80,
      width: size.width * 0.80,
      padding: EdgeInsets.all(11.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: const Color(0x12000000),
            offset: Offset(0, 7),
            blurRadius: 24,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: TableCalendar(
              focusedDay: focusedDate,
              firstDay: DateTime.now(),
              lastDay: DateTime(2050),
              /*rangeStartDay: DateTime.now(),
              rangeEndDay: DateTime(2050),*/
              calendarFormat: format,
              headerStyle: HeaderStyle(
                /*titleTextStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: const Color(0xff000000),
                  height: 1.3333333333333333,
                ),*/
                titleCentered: true,
                formatButtonVisible: false,
                leftChevronIcon: Icon(
                  Icons.keyboard_arrow_left,
                  size: 20,
                  color: Colors.black,
                ),
                formatButtonTextStyle: TextStyle(
                    color: Colors.blue
                ),
                rightChevronIcon: Icon(
                  Icons.keyboard_arrow_right,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              selectedDayPredicate: (DateTime date){
                return date.weekday == 6 || date.weekday == 7 ? false : isSameDay(selectedDate, date);
              },
              onDaySelected: (DateTime _selectedDay, DateTime _focusedDay){
                setState(() {
                  selectedDate = _selectedDay;
                  focusedDate = _focusedDay;
                });
                _openCustomDialog(_selectedDay);
              },
              calendarStyle: CalendarStyle(
                isTodayHighlighted: false,
                weekendTextStyle: TextStyle(
                  color: Colors.grey,
                ),
                defaultDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                ),
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
