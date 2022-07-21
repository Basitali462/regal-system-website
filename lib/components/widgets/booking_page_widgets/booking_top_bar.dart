import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/components/widgets/home_page_widgets/top_section_widgets/icon.dart';
import 'package:regal_system_portfolio/constants/constants.dart';

class BookingTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Colors.black.withOpacity(0.6),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: kDefaultPadding * 6),
      child: TopIcon(),
    );
  }
}
