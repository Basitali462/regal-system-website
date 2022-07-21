import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/constants/constants.dart';
import 'package:regal_system_portfolio/locator.dart';
import 'package:regal_system_portfolio/routes/route_names.dart';
import 'package:regal_system_portfolio/services/navigation_services/navigation_services.dart';

class TopText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Let The World Know Your Dream',
          style: Theme.of(context).textTheme.headline2.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: kDefaultPadding,),
        Text(
          'Development the way it should be.',
          style: Theme.of(context).textTheme.headline5.copyWith(
            color: Colors.white,
          ),
        ),
        SizedBox(height: kDefaultPadding / 2,),
        Text(
          'Without the headaches, overspending and timeline delays.',
          style: Theme.of(context).textTheme.headline5.copyWith(
            color: Colors.white,
          ),
        ),
        SizedBox(height: kDefaultPadding,),
        OutlinedButton(
          onPressed: (){
            Navigator.of(context).pushNamed(bookingRoute);
            //locator<NavigationService>().navigateTo(bookingRoute);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
          ),
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text(
              'LETS BUILD YOUR DREAM',
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ],
    );
    /*RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Turning Your Ideas Into Great Product.',
        style: Theme.of(context).textTheme.headline3.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
      ),
    );*/
  }
}
