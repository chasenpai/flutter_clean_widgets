import 'package:flutter/material.dart';

class ScrollableRowCategory extends StatefulWidget {
  const ScrollableRowCategory({super.key});

  @override
  State<ScrollableRowCategory> createState() => _ScrollableRowCategoryState();
}

class _ScrollableRowCategoryState extends State<ScrollableRowCategory> {

  int selectedIndex = 0;
  final categories = [
    '전체',
    'RPG',
    'FPS',
    '시뮬레이션',
    '어드벤처',
    '전략',
    '슈팅',
    '스포츠',
    '액션',
    '캐주얼',
    '레이싱',
    '음악',
    '카드',
    '보드',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: (index == 0) ? 16.0 : 0,
              right: (index == categories.length - 1) ? 16.0 : 6,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: selectedIndex == index ? Colors.orange : Colors.transparent,
                  border: Border.all(
                    color: selectedIndex == index ? Colors.transparent : Colors.grey,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 8.0,
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.black87,
                    fontSize: 16.0,
                    fontWeight: selectedIndex == index ? FontWeight.w700 : null,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
