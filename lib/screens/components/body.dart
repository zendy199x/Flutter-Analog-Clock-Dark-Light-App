import 'package:analog_clock/screens/components/clock.dart';
import 'package:analog_clock/screens/components/country_card.dart';
import 'package:analog_clock/screens/components/time_in_hour_and_minute.dart';
import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Ho Chi Minh City, Viet Nam | GMT+7",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const TimeInHourAndMinute(),
            const Spacer(),
            const Clock(),
            const Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  CountryCard(
                    country: "New York, USA",
                    timeZone: "-11 HRS | GMT-4",
                    iconSrc: "assets/icons/Liberty.svg",
                    time: "9:20",
                    period: "PM",
                  ),
                  CountryCard(
                    country: "Sydney, AU",
                    timeZone: "+3 HRS | GMT+10",
                    iconSrc: "assets/icons/Sydney.svg",
                    time: "1:20",
                    period: "AM",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
