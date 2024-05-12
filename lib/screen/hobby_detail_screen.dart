import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/widget/save_gradient_btn.dart';

class HobbyDetailScreen extends StatefulWidget {
  const HobbyDetailScreen({super.key});

  @override
  State<HobbyDetailScreen> createState() => _HobbyDetailScreenState();
}

class _HobbyDetailScreenState extends State<HobbyDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
         alignment: Alignment.center,
         child:Column(
           children: [
             // 취미 사진
             Container(
               child: Image.asset('lib/assets/images/hobby_tennis.PNG'),
               height: 450,
             ),
             // 취미 이름
             Container(
               padding: EdgeInsets.all(7),
               child: Text(
                   '테니스',
                   style: TextStyle(fontSize: 18)),
             ),
             // 취미 설명
             Container(
               padding: EdgeInsets.all(7),
               child: Text(
                 '활력 넘치게 같이 뛰면서 에너지 충전!',
                 style: TextStyle(fontSize: 13),
               ),
             ),
             // 저장 버튼
             Container(
               padding: EdgeInsets.all(7),
               child: SaveGradientBtn(),
             )
           ],
         ),
      ),
    );
  }
}
