import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/widget/home_carousel_slider.dart';
import 'package:flutter03_mingflix/widget/home_hobby_slider.dart';
import 'package:flutter03_mingflix/widget/home_top_app_bar.dart';
import 'package:flutter03_mingflix/widget/home_trip_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeTopAppBar(),
      body: ListView(
        children: [
          HomeCarouselSlider(),
          Padding(padding: EdgeInsets.only(top: 20)),
          HomeTripSlider(),
          Padding(padding: EdgeInsets.only(top: 20)),
          HomeHobbySlider(),
        ],
      )
    );
  }
}