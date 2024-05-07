import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/widget/home_top_app_bar.dart';

class TripDetailScreen extends StatefulWidget {
  const TripDetailScreen({super.key});

  @override
  State<TripDetailScreen> createState() => _TripDetailScreenState();
}

class _TripDetailScreenState extends State<TripDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Text('sss'),
                Container(
                  // 배경 이미지를 깔아준다.
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('lib/assets/images/love4.PNG'),
                          fit : BoxFit.cover
                      )
                  ),
                ),
                Positioned(
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                    )
                )
              ],
            )
          ],
        )
    );
  }
}