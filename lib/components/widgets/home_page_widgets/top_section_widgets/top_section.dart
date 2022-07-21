import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/components/widgets/home_page_widgets/top_section_widgets/icon.dart';
import 'package:regal_system_portfolio/components/widgets/home_page_widgets/top_section_widgets/top_text.dart';
import 'package:regal_system_portfolio/constants/constants.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/top_bg.jpeg',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.6),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding * 5, top: kDefaultPadding),
            child: Align(
              alignment: Alignment.topLeft,
              child: TopIcon(),
            ),
          ),
          TopText(),
        ],
      ),
    );
  }
}
