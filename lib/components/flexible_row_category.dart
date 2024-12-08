import 'package:flutter/material.dart';

class FlexibleRowCategory extends StatefulWidget {
  const FlexibleRowCategory({super.key});

  @override
  State<FlexibleRowCategory> createState() => _FlexibleRowCategoryState();
}

class _FlexibleRowCategoryState extends State<FlexibleRowCategory> {

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '카테고리',
          style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700
          ),
        ),
        const SizedBox(height: 10.0,),
        Wrap(
          spacing: 6.0,
          runSpacing: 8.0,
          children: categories.asMap().entries.map((e) {
            final index = e.key;
            final value = e.value;
            return GestureDetector(
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
                  value,
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.black87,
                    fontSize: 16.0,
                    fontWeight: selectedIndex == index ? FontWeight.w700 : null,
                  ),
                ),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
