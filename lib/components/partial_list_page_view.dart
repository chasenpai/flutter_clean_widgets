import 'package:flutter/material.dart';

class PartialListPageView extends StatefulWidget {
  const PartialListPageView({super.key});

  @override
  State<PartialListPageView> createState() => _PartialListPageViewState();
}

class _PartialListPageViewState extends State<PartialListPageView> {

  final _pageController = PageController(viewportFraction: 0.9,);

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 372.0,
      child: PageView.builder(
        controller: _pageController,
        pageSnapping: false,
        itemCount: (_categories.length / 4).ceil(),
        itemBuilder: (context, index) {
          final startIndex = index * 4;
          final endIndex = startIndex + 4;
          final items = _categories.sublist(startIndex, endIndex > _categories.length ? _categories.length : endIndex);
          return Column(
            children: items.map((e) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  bottom: 15,
                ),
                child: SizedBox(
                  height: 78.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 74.0,
                        width: 74.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e,
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
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
