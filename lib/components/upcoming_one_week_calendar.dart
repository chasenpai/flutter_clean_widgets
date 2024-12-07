import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UpcomingOneWeekCalendar extends StatefulWidget {
  const UpcomingOneWeekCalendar({super.key});

  @override
  State<UpcomingOneWeekCalendar> createState() => _UpcomingOneWeekCalendarState();
}

class _UpcomingOneWeekCalendarState extends State<UpcomingOneWeekCalendar> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now().toUtc();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(7, (index) {
          final day = now.add(Duration(days: index));
          final dayStr = DateFormat('E', 'ko_KR').format(day);
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                width: 52.0,
                height: 52.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16.0),
                  color: selectedIndex == index ? Colors.orange : Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        index == 0 ? '오늘' : dayStr,
                        style: TextStyle(
                          color: selectedIndex == index ? Colors.white : Colors.black,
                          fontWeight: selectedIndex == index ? FontWeight.w700 : null,
                          fontSize: 13.0,
                        ),
                      ),
                      Text(
                        day.day.toString(),
                        style: TextStyle(
                          color: selectedIndex == index ? Colors.white : Colors.black,
                          fontWeight: selectedIndex == index ? FontWeight.w700 : null,
                          fontSize: 16.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
