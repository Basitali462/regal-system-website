import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_form.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_text.dart';
import 'package:regal_system_portfolio/components/widgets/booking_page_widgets/booking_top_bar.dart';
import 'package:regal_system_portfolio/constants/constants.dart';

class BookingPage extends StatelessWidget {
  //static final myTabPageKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BookingTopBar(),
            SizedBox(height: kDefaultPadding * 8,),
            BookingText(
              'Thank You For choosing Us.',
              Theme.of(context).textTheme.headline2.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: kDefaultPadding * 2,),
            BookingText(
              'Book a slot to discuss your Ideas.',
              Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.black,
              ),
            ),
            SizedBox(height: kDefaultPadding * 4,),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              height: 3,
              child: Container(
                color: Colors.black,
              ),
            ),
            SizedBox(height: kDefaultPadding * 4,),
            BookingText(
              'Let\'s create your Idea.',
              Theme.of(context).textTheme.headline3.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: kDefaultPadding,),
            BookingText(
              'Book yourself a slot.',
              Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.black
              ),
            ),
            SizedBox(height: kDefaultPadding * 4,),
            Flexible(
              fit: FlexFit.loose,
              child: BookingForm(),
            ),
            SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}
