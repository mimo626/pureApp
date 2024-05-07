import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/widget/home_top_app_bar.dart';
import 'package:flutter03_mingflix/widget/trip_detail_content.dart';

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
            TripDetailContent()
          ],
        )
    );
  }
}