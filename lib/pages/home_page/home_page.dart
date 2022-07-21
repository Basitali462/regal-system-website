import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/components/widgets/home_page_widgets/top_section_widgets/top_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
          ],
        ),
      ),
    );
  }
}
