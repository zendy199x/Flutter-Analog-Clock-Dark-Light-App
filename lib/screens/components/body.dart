import 'package:analog_clock/screens/components/clock.dart';
import 'package:analog_clock/screens/components/time_in_hour_and_minute.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Newport Beach, USA | PST",
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const TimeInHourAndMinute(),
          const Clock(),
        ],
      ),
    );
  }
}
