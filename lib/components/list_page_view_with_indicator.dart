import 'package:flutter/material.dart';

class ListPageViewWithIndicator extends StatefulWidget {
  const ListPageViewWithIndicator({super.key});

  @override
  State<ListPageViewWithIndicator> createState() => _ListPageViewWithIndicatorState();
}

class _ListPageViewWithIndicatorState extends State<ListPageViewWithIndicator> {

  final _pageController = PageController(viewportFraction: 1,);
  final _currentPageNotifier = ValueNotifier<int>(0);

  final _categories = [
    '메이플스토리',
    '던전앤파이터',
    '리그 오브 레전드',
    '피파 온라인',
    '발로란트',
    '스타크래프트',
    '서든어택',
    '로스트아크',
    '검은사막',
    '카운터 스트라이크 온라인',
    '오버워치2',
    '배틀그라운드',
    '디아블로4',
    '테일즈런너',
    '블레이드앤소울',
    '사이퍼즈',
    '바람의 나라',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    _currentPageNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '카테고리',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '더보기',
                style: TextStyle(
                  fontSize: 14.0,
                  //fontWeight: FontWeight.w700,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0,),
        SizedBox(
          height: 274.0,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              _currentPageNotifier.value = index;
            },
            itemCount: (_categories.length / 3).ceil(),
            itemBuilder: (context, index) {
              final startIndex = index * 3;
              final endIndex = startIndex + 3;
              final items = _categories.sublist(startIndex, endIndex > _categories.length ? _categories.length : endIndex);
              return Column(
                children: items.asMap().entries.map((e) {
                  final index = e.key;
                  final value = e.value;
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 78.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    value,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '#RPG #어드벤처',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 14.0,
                                        color: Colors.grey[600],
                                      ),
                                      const SizedBox(width: 2.0,),
                                      Text(
                                        '50명',
                                        style: TextStyle(
                                          //fontWeight: FontWeight.w700,
                                          fontSize: 12.0,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                      const SizedBox(width: 8.0,),
                                      Icon(
                                        Icons.remove_red_eye,
                                        size: 14.0,
                                        color: Colors.grey[600],
                                      ),
                                      const SizedBox(width: 2.0,),
                                      Text(
                                        '230',
                                        style: TextStyle(
                                          //fontWeight: FontWeight.w700,
                                          fontSize: 12.0,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 74.0,
                                width: 74.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if(index != items.length - 1)
                          const Divider(
                            thickness: 0.2,
                            height: 20.0,
                          ),
                      ],
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ),
        SizedBox(
          height: 32.0,
          child: ValueListenableBuilder<int>(
            valueListenable: _currentPageNotifier,
            builder: (context, value, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate((_categories.length / 3).ceil(), (index) {
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPageNotifier.value == index ? Colors.orange : Colors.grey[300],
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}
