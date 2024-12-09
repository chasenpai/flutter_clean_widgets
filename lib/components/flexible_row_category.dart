import 'package:flutter/material.dart';

class FlexibleRowCategory extends StatefulWidget {
  const FlexibleRowCategory({super.key});

  @override
  State<FlexibleRowCategory> createState() => _FlexibleRowCategoryState();
}

class _FlexibleRowCategoryState extends State<FlexibleRowCategory> {

  int _selectedIndex = 0;
  final _categories = [
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
        const SizedBox(height: 16.0,),
        Wrap(
          spacing: 6.0,
          runSpacing: 8.0,
          children: _categories.asMap().entries.map((e) {
            final index = e.key;
            final value = e.value;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: _selectedIndex == index ? Colors.orange : Colors.transparent,
                  border: Border.all(
                    color: _selectedIndex == index ? Colors.transparent : Colors.grey,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 8.0,
                ),
                child: Text(
                  value,
                  style: TextStyle(
                    color: _selectedIndex == index ? Colors.white : Colors.black87,
                    fontSize: 16.0,
                    fontWeight: _selectedIndex == index ? FontWeight.w700 : null,
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
