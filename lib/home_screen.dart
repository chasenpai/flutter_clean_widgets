import 'package:flutter/material.dart';
import 'package:flutter_clean_widgets/components/flexible_row_category.dart';
import 'package:flutter_clean_widgets/components/horizontal_overlay_card_list.dart';
import 'package:flutter_clean_widgets/components/information_bar.dart';
import 'package:flutter_clean_widgets/components/list_page_view_with_indicator.dart';
import 'package:flutter_clean_widgets/components/multi_todo_card.dart';
import 'package:flutter_clean_widgets/components/partial_list_page_view.dart';
import 'package:flutter_clean_widgets/components/scrollable_row_category.dart';
import 'package:flutter_clean_widgets/components/single_todo_card.dart';
import 'package:flutter_clean_widgets/components/upcoming_one_week_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
      //animationDuration: Duration.zero,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            _renderTabBar(),
            const SizedBox(height: 20.0,),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ListView(
                    children: const [
                      UpcomingOneWeekCalendar(),
                      SizedBox(height: 24,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                        child: FlexibleRowCategory(),
                      ),
                      SizedBox(height: 24,),
                      ScrollableRowCategory(),
                      SizedBox(height: 24,),
                      ListPageViewWithIndicator(),
                      SizedBox(height: 24,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                        child: InformationBar(),
                      ),
                      SizedBox(height: 24,),
                      PartialListPageView(),
                      SizedBox(height: 24,),
                      HorizontalOverlayCardList(),
                      SizedBox(height: 24,),
                    ],
                  ),
                  ListView(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.0,
                        ),
                        child: SingleTodoCard(),
                      ),
                      SizedBox(height: 24,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: MultiTodoCard(),
                      ),
                      SizedBox(height: 24,),
                    ],
                  ),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderTabBar() {
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      indicatorWeight: 3.0,
      indicatorColor: Colors.orange,
      labelStyle: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
        color: Colors.grey[400],
      ),
      dividerHeight: 0.75,
      dividerColor: Colors.grey[300],
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      tabs: const [
        Tab(
          text: 'one',
        ),
        Tab(
          text: 'two',
        ),
        Tab(
          text: 'three',
        ),
      ],
    );
  }
}
