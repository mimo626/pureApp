import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/widget/home_top_app_bar.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeTopAppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            // 프로필 이미지
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/images/profile.PNG'),
                radius: 48,
              ),
            ),
            // 이름
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                  '강민주',
                style: TextStyle(fontSize: 18),
              ),
            ),
            // 애인 이름
            Divider(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('애인'),
                    padding: EdgeInsets.all(7),
                  ),
                  Container(
                    child: Text('김용석'),
                    padding: EdgeInsets.all(7),
                  )
                ],
              ),
            ),
            // 처음 사귄 날짜
            Divider(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("우리가 처음 사귄 날짜"),
                    padding: EdgeInsets.all(7),
                  ),
                  Container(
                    child: Text("2023년 4월 24일"),
                    padding: EdgeInsets.all(7),
                  )
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    color: Colors.white,
                    child: Container(
                      height: 120,
                      width: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('민주님'),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                                '얌전한 고양이형',
                                style: TextStyle(fontSize: 16,
                                    color: Colors.indigo,
                                    fontStyle: FontStyle.italic)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.pinkAccent,
                  ),
                  Card(
                    color: Colors.white,
                    child: Container(
                      height: 120,
                      width: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('용석님'),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                                '다정한 멍뭉이형',
                                style: TextStyle(fontSize: 16,
                                    color: Colors.indigo,
                                    fontStyle: FontStyle.italic)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
