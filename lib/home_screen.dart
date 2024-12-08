import 'package:flutter/material.dart';
import 'package:flutter_clean_widgets/components/flexible_row_category.dart';
import 'package:flutter_clean_widgets/components/scrollable_row_category.dart';
import 'package:flutter_clean_widgets/components/upcoming_one_week_calendar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: ListView(
          children: const [
            UpcomingOneWeekCalendar(),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: FlexibleRowCategory(),
            ),
            SizedBox(height: 20,),
            ScrollableRowCategory(),
          ],
        ),
      ),
    );
  }
}
