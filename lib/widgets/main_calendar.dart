import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';


class MainCalendar extends StatelessWidget {
  // 멤버 변수(write once)
  final OnDaySelected onDaySelected;
  final DateTime selectedDate;

  // 생성자
  // @required - 필수 입력 인자로써, 입력하지 않으면 컴파일 에러
  // 생성자안에 {arg1, arg2}형태로 구성함으로써 객체 생성 시 arg1:'val'형식으로 구현 가능
  MainCalendar({
    required this.onDaySelected,
    required this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime(2000),
        lastDay: DateTime(2040),

        onDaySelected: onDaySelected, //CallBack - 날짜 호출 시
        //??? - 메뉴얼대로 구현했지만 확인 필요
        selectedDayPredicate: (date) {
            return isSameDay(selectedDate, date);
        },
    );
  }
}