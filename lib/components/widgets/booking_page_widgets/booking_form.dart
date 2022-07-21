import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_tabs/appointment_tab/appointment_tab.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_tabs/client_info/client_info.dart';
import 'package:regal_system_portfolio/constants/constants.dart';
import 'package:regal_system_portfolio/constants/variables.dart';

class BookingForm extends StatefulWidget {
  const BookingForm({Key key}) : super(key: key);

  @override
  _BookingFormState createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> with SingleTickerProviderStateMixin {
  //TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      //height: 700,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: TabBar(
              controller: tabController,
              indicator: BoxDecoration(
                color: Colors.transparent,
              ),
              unselectedLabelColor: Colors.grey.shade400,
              labelColor: Colors.black,
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w700,
              ),
              labelStyle: TextStyle(
                fontWeight: FontWeight.w700,
              ),
              labelPadding: EdgeInsets.all(kDefaultPadding),
              onTap: (index){
                if(index == 1 && curSelectedTime == null){
                  tabController.index = 0;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please Select Date and Time First.')),
                  );
                  return ;
                }
              },
              tabs: [
                Text(
                  'Choose Appointment',
                ),
                Text(
                  'Your Info',
                ),
                /*Text(
                  'Confirmation',
                ),*/
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: AspectRatio(
              aspectRatio: 1,
              child: TabBarView(
                controller: tabController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  AppointmentTab(),
                  ClientInfo(),
                  /*Text(
                      'Tab 3'
                  ),*/
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
