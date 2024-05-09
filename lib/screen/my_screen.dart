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
      body: ListView(
        children: [

        ],
      ),
    );
  }
}
