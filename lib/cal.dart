import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calender'),
      ),
      body: SfCalendar(
        view: CalendarView.month,
        monthCellBuilder: (BuildContext buildContext, MonthCellDetails details) {

          return Container(
       color: Colors.grey,
       child: Text(
         details.date.day.toString(),
       ),
       );
          
        },
      ),
    );
  }
}