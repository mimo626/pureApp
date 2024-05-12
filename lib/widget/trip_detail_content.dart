import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/widget/save_gradient_btn.dart';

class TripDetailContent extends StatefulWidget {
  const TripDetailContent({super.key});

  @override
  State<TripDetailContent> createState() => _TripDetailContentState();
}

class _TripDetailContentState extends State<TripDetailContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // 배경 이미지를 깔아준다.
          width: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/assets/images/trip1.PNG'),
                  fit : BoxFit.fill
              )
          ),
          child: Container(
            // 흐림 필터
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                alignment: Alignment.center,
                color: Colors.black.withOpacity(0.1),
                child: Container(
                  child: Column(
                    children: [
                      // 여행지 이미지
                      Container(
                        child: Image.asset('lib/assets/images/trip1.PNG'),
                        height: 690,
                      ),
                      // 설명
                      Container(
                        padding: EdgeInsets.all(7),
                        child: Text(
                            '강릉 앞 바다',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                        ),
                      ),
                      // 유명한 놀거리
                      Container(
                        padding: EdgeInsets.all(7),
                        child: Text(
                          '순두부 젤라또 / 초당 순두부 / 장칼국수 / 강릉 커피 / 대게 홍게',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15)
                        ),
                      ),
                      // 저장 버튼
                      Container(
                        padding: EdgeInsets.all(7),
                        child: SaveGradientBtn(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            child: AppBar(
              backgroundColor: Colors.transparent,
            )
        )
      ],
    );
  }
}
