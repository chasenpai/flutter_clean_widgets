import 'package:flutter/material.dart';

class HorizontalOverlayCardList extends StatelessWidget {
  const HorizontalOverlayCardList({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
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
    return SizedBox(
      height: 210.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: (index == 0) ? 20.0 : 0,
              right: (index == categories.length - 1) ? 20.0 : 12,
            ),
            child: SizedBox(
              height: 210.0,
              width: 157.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Stack(
                  children: [
                    //image
                    Container(
                      color: Colors.grey[300],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black.withOpacity(0.35),
                            Colors.black.withOpacity(0.7),
                          ],
                          stops: const [0.0, 0.6, 0.8, 1.0],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      bottom: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            categories[index],
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Text(
                            '#RPG #어드벤처',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 14.0,
                                color: Colors.white,
                              ),
                              SizedBox(width: 2.0,),
                              Text(
                                '50명',
                                style: TextStyle(
                                  //fontWeight: FontWeight.w700,
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 8.0,),
                              Icon(
                                Icons.remove_red_eye,
                                size: 14.0,
                                color: Colors.white,
                              ),
                              SizedBox(width: 2.0,),
                              Text(
                                '230',
                                style: TextStyle(
                                  //fontWeight: FontWeight.w700,
                                  fontSize: 12.0,
                                  color: Colors.white,
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
            ),
          );
        },
      ),
    );
  }
}
