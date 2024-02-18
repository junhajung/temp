import 'package:calendar/widgets/main_calendar.dart';
import 'package:flutter/material.dart';

class DiaryScreen extends StatefulWidget {
  const DiaryScreen({Key? key}) : super(key: key); //?

  State<DiaryScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<DiaryScreen> {
  // var - 선택 날짜
  DateTime selectedDate = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diary'),
      ),
      body: MainCalendar(
        selectedDate: selectedDate,
        onDaySelected: onDaySelected,
      ),
    );
  }


  void onDaySelected(DateTime selectedDate, DateTime focusedDate) {
    setState(() {
      this.selectedDate = selectedDate;
    });
  }
}
