import 'dart:async';

import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';

class TimeInHourAndMinute extends StatefulWidget {
  const TimeInHourAndMinute({Key? key}) : super(key: key);

  @override
  _TimeInHourAndMinuteState createState() => _TimeInHourAndMinuteState();
}

class _TimeInHourAndMinuteState extends State<TimeInHourAndMinute> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  bool _hourOfPeriod = false;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";

    return GestureDetector(
      onTap: () {
        setState(() {
          _hourOfPeriod = !_hourOfPeriod;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            // if you use _timeOfDay.hourOfPeriod then it will show 08:10 like that
            // But we want 8:10
            "${_hourOfPeriod ? _timeOfDay.hourOfPeriod : _timeOfDay.hour}:${_timeOfDay.minute > 9 ? _timeOfDay.minute : "0" + _timeOfDay.minute.toString()}",
            style: Theme.of(context).textTheme.headline1,
          ),
          if (!_hourOfPeriod) ...[
            const SizedBox(width: 5),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                _period,
                style: TextStyle(fontSize: getProportionateScreenWidth(18)),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
